require "spec_helper"

module Guard
  describe Hologram do
    let(:options) { {} }
    subject(:hologram) { Guard::Hologram.new(options) }

    describe "#start" do
      it "does not call #run_all" do
        hologram.should_not_receive(:run_all)
        hologram.start
      end
    end

    describe "#run_all" do
      it "builds the styleguide" do
        hologram.should_receive(:system).with(*"bundle exec hologram hologram_config.yml".split) { true }
        hologram.run_all
      end

      context "with a custom config option" do
        let(:options) { {config_path: "path/to/config/file.yml"} }

        it "builds the styleguide" do
          hologram.should_receive(:system).with(*"bundle exec hologram path/to/config/file.yml".split) { true }
          hologram.run_all
        end
      end

      it "raises an error if the build fails" do
        hologram.should_receive(:system) { false }
        expect { hologram.run_all }.to throw_symbol(:task_has_failed)
      end
    end
  end
end
