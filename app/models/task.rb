class Task
  class << self
    # 外部APIの処理が重いとする
    def call_heavy_api(params)
      Rails.logger.warn(params)

      'success'
    end
  end
end
