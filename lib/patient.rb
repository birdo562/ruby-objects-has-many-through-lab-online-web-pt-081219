class Patient
  attr_accessor :name, :doctor, :date
  @@all=[]
  def initialize(name)
    @name = name
    @doctor = doctor
    @date = date
    @@all << self
  end
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end
  def self.all
    @@all
  end
  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end
  def patients
    appointments.map(&:name)
  end
end
