# encoding: UTF-8

State.create(name: 'Aguascalientes')
State.create(name: 'Baja California')
State.create(name: 'Baja California Sur')
State.create(name: 'Campeche')
State.create(name: 'Chiapas')
State.create(name: 'Chihuahua')
State.create(name: 'Coahuila de Zaragoza')
State.create(name: 'Colima')
State.create(name: 'Durango')
State.create(name: 'Guanajuato')
State.create(name: 'Guerrero')
State.create(name: 'Hidalgo')
State.create(name: 'Jalisco')
State.create(name: 'Michoacan de Ocampo')
State.create(name: 'Morelos')
State.create(name: 'Nayarit')
State.create(name: 'Nuevo Leon')
State.create(name: 'Oaxaca')
State.create(name: 'Puebla')
State.create(name: 'Queretaro')
State.create(name: 'Quintana Roo')
State.create(name: 'San Luis Potosi')
State.create(name: 'Sinaloa')
State.create(name: 'Sonora')
State.create(name: 'Tabasco')
State.create(name: 'Tamaulipas')
State.create(name: 'Tlaxcala')
State.create(name: 'Veracruz de Ignacio de Llave')
State.create(name: 'Yucatan')
State.create(name: 'Zacatecas')

User.create(email: 'admin@artepopular.com.mx', password: 'admin')

Artist.create([
  { :name => "Cesar Duranton", :business_name => "Duranton", :address => "Mexico, DF", :phone => "5512341234", :email => "cesar.duranton@artepopular.com.mx", :foto => "cesarduranton.jpg", :latitude => 19.432661, :longitud => -99.13334, :location => "Mexico, DF", :biography => "<p><span style=\"color: #777777; font-family: Georgia, 'Times New Roman', serif; font-size: 13px; font-style: italic; line-height: 18px;\">Trabajo dentro del arte popular mexicano, desde hace 15 a&ntilde;os elaboro piezas piezas tradicionales.</span></p>" }
], :without_protection => true )

Technique.create([
  { :name => "Cartonería", :description => "<p>La Cartoner&iacute;a es considerada un arte popular mexicano, consiste en una t&eacute;cnica con la que se crean figuras a trav&eacute;s de un proceso de modelado de papel peri&oacute;dico.</p>\r\n<p>Entre los m&aacute;s relevantes tipos de piezas creadas con esta t&eacute;cnica est&aacute;n los llamados judas diablitos, pi&ntilde;atas, toritos, mojigangas, alebrijes, catrinas y calaveras, viejitos y panzones, as&iacute; como m&aacute;scaras y juguetes hechos de papel entre los que destacan la &ldquo;lolita&rdquo; y los caballitos.</p>" }
], :without_protection => true )
