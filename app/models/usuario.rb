#encoding: utf-8

class Usuario < ActiveRecord::Base

  belongs_to :dpto_mendoza

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable

  NOMBRE_Y_APELLIDO_REGEX = /\A[a-zA-zñáéíóú]+[a-zA-z\sñáéíóú]*\z/
  TELEFONO_REGEX = /\A(([1-9][0-9]{9})|([1-9][0-9]{11})|(0[0-9]{10})|(0[0-9]{12})|([1-9][0-9]{2}[*][0-9]{4}))\z/

  # Validaciones: ---------------------------------------------------------------------------------
  
  # NOMBRE
  validates_presence_of   :nombre
  validates_format_of :nombre,:with => NOMBRE_Y_APELLIDO_REGEX

  # APELLIDO
  validates_presence_of   :apellido
  validates_format_of :apellido,:with => NOMBRE_Y_APELLIDO_REGEX

  # E-MAIL
  validates_presence_of   :email, if: :email_required?
  validates_uniqueness_of :email, allow_blank: true, if: :email_changed?
  validates_format_of :email,:with => Devise.email_regexp, if: :email_changed?

  # CONFIRMACIÓN DE E-MAIL
  validates_presence_of     :email, if: :email_required?
  validates_confirmation_of :email, if: :email_required?

  # CONTRASEÑA
  validates_presence_of     :password, if: :password_required?
  validates_confirmation_of :password, if: :password_required?
  validates_length_of       :password, :within => Devise.password_length, allow_blank: true

  # TELEFONO
  validates_format_of :telefono,:with => TELEFONO_REGEX, allow_blank: true, :message=>"Debe estar formado por la característica seguida del número (sin espacios)"

  # TELEFONO 2
  validates_format_of :telefono2,:with => TELEFONO_REGEX, allow_blank: true, :message=>"Debe estar formado por la característica seguida del número (sin espacios)"
  
  protected

    def password_required?
      !persisted? || !password.nil? || !password_confirmation.nil?
    end

    def email_required?
      true
    end

end
