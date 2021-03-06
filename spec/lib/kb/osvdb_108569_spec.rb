require 'spec_helper'
describe "The OSVDB-108569 vulnerability" do
	before(:all) do
		@check = Codesake::Dawn::Kb::OSVDB_108569.new
		# @check.debug = true
	end
  it "is reported when a vulnerable backup_checksum gem version it has been found (3.0.23)" do
    @check.dependencies = [{:name=>"backup_checksum", :version=>"3.0.23"}]
    @check.vuln?.should   be_true
  end
  it "is not reported when a safe backup_checksum gem version it has been found (3.0.24)" do
    @check.dependencies = [{:name=>"backup_checksum", :version=>"3.0.24"}]
    @check.vuln?.should   be_false
  end
  it "must be filled with CVE identifier"
  it "must be filled with CVSS information"
end
