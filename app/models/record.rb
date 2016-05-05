class Record < ActiveRecord::Base
  def self.find_or_create_by_jkf(jkf)
    record_hash = calc_hash(jkf)
    Record.find_by(record_hash: record_hash) || Record.create(jkf: jkf, record_hash: record_hash)
  end

  def self.calc_hash(jkf)
    Digest::SHA256.hexdigest(jkf)
  end
end
