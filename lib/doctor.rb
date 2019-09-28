class Doctor
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def appointments
    Appointment.all.collect {|appointment| appointment.doctor == self}
  end
    def new_appointment
      
end