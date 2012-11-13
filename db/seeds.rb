# encoding: utf-8
Artist.create([
  { :name => "Cesar Duranton", :business_name => "Duranton", :address => "Mexico, DF", :phone => "5512341234", :email => "cesar.duranton@artepopular.com.mx", :foto => "cesarduranton.jpg", :latitude => 19.432661, :longitud => -99.13334, :location => "Mexico, DF", :biography => "<p>Trabajo dentro del arte popular mexicano, desde hace 15 a&ntilde;os elaboro piezas piezas tradicionales y otras de dise&ntilde;o propio en cartoner&iacute;a.</p>" },
  { :name => "Jorge Rosano", :business_name => "Papel Recortado", :address => "Tepoztlan, Morelos, Mexico", :phone => "12341234", :email => "jorge.rosano@artepopular.com.mx", :foto => "jorgerosano.jpg", :latitude => 18.9856, :longitud => -99.09978, :location => "", :biography => "<p><em>\"Las formas aparecen y yo quito lo que sobra\"</em></p>\r\n<p>Jorge Rosano</p>\r\n<p><em>\"Mi arte est&aacute; relacionado con el papel recortado de los ind&iacute;genas otom&iacute;es (&ntilde;a&ntilde;u) herederos de las culturas prehisp&aacute;nicas m&aacute;s antiguas; no con el papel picado, una t&eacute;cnica que viene de China\"</em></p>\r\n<p>Jorge Rosano</p>" }
], :without_protection => true )

State.create([
  { :name => "Aguascalientes" },
  { :name => "Baja California" },
  { :name => "Baja California Sur" },
  { :name => "Campeche" },
  { :name => "Chiapas" },
  { :name => "Chihuahua" },
  { :name => "Coahuila de Zaragoza" },
  { :name => "Colima" },
  { :name => "Durango" },
  { :name => "Distrito Federal" },
  { :name => "Guanajuato" },
  { :name => "Guerrero" },
  { :name => "Hidalgo" },
  { :name => "Jalisco" },
  { :name => "Michoacan de Ocampo" },
  { :name => "Morelos" },
  { :name => "Nayarit" },
  { :name => "Nuevo Leon" },
  { :name => "Oaxaca" },
  { :name => "Puebla" },
  { :name => "Queretaro" },
  { :name => "Quintana Roo" },
  { :name => "San Luis Potosi" },
  { :name => "Sinaloa" },
  { :name => "Sonora" },
  { :name => "Tabasco" },
  { :name => "Tamaulipas" },
  { :name => "Tlaxcala" },
  { :name => "Veracruz de Ignacio de Llave" },
  { :name => "Yucatan" },
  { :name => "Zacatecas" }
], :without_protection => true )

Technique.create([
  { :name => "Cartonería", :description => "<p>La Cartoner&iacute;a es considerada un arte popular mexicano, consiste en una t&eacute;cnica con la que se crean figuras a trav&eacute;s de un proceso de modelado de papel peri&oacute;dico.</p>" },
  { :name => "Papel Recortado", :description => "<p>Papel recortado sin dise&ntilde;o previo, entintado por la orilla.</p>" }
], :without_protection => true )

User.create([
  { :email => "admin@artepopular.com.mx", :encrypted_password => "$2a$10$cDposMV2TGweLWb1nDZDB.6Mu.mrPEY38Uqv5YNUTIe8ASww9tqri", :created_at => "2012-11-13 02:34:56", :updated_at => "2012-11-13 02:34:56" }
], :without_protection => true )
