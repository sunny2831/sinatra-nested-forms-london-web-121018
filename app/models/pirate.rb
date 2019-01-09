class Pirate
  attr_reader :name, :weight, :height

  PIRATES = []

  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
    PIRATES << self
  end

  # def initialize(name, weight, height)
  #   @name = name
  #   @weight = weight
  #   @height = height
  #   PIRATES << self
  # end

  def self.all
    PIRATES
  end

end
