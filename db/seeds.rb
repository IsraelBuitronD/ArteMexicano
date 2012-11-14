# encoding: utf-8
admin = User.create( :email => "admin@artepopular.com.mx", :password => "admin" )
normal = User.create( :email => "joedoe@devluv.com", :password => "doedoe" )

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

Material.create([
  { :name => "Cartón", :description => "<p>El cart&oacute;n es un material formado por varias capas de papel superpuestas, a base de fibra virgen o de papel reciclado. El cart&oacute;n es m&aacute;s grueso, duro y resistente que el papel.</p>\r\n<p>Material barato compuesto de varias hojas de papel superpuestas y prensadas, utilizado principalemente para embalaje; Envase o embalaje hecho en este material; Por extensi&oacute;n, bulto que contiene varias unidades de un producto embalado en cart&oacute;n, para su distribuci&oacute;n mayorista</p>", :state_id => 10 },
  { :name => "Papel", :description => "<p>El papel es una delgada hoja elaborada con pasta de fibras vegetales que son molidas, blanqueadas, diluidas en agua, secadas, y posteriormente endurecidas; a la pulpa de celulosa, normalmente, se le a&ntilde;aden sustancias como el polipropileno o el polietileno con el fin de proporcionar diversas caracter&iacute;sticas. Las fibras est&aacute;n aglutinadas mediante enlaces por puente de hidr&oacute;geno. Tambi&eacute;n se denomina papel, hoja, o folio, a su forma m&aacute;s com&uacute;n como l&aacute;mina delgada.</p>", :state_id => 10 },
  { :name => "Barro", :description => "<p>El barro es una mezcla semil&iacute;quida de agua y tierra compuesta por sedimentos, part&iacute;culas de polvo y arcilla. Los dep&oacute;sitos de barro se endurecen con el paso del tiempo hasta convertirse en lutita.</p>", :state_id => 19 }
], :without_protection => true )

Technique.create([
  { :name => "Cartonería", :description => "<p>La Cartoner&iacute;a es considerada un arte popular mexicano, consiste en una t&eacute;cnica con la que se crean figuras a trav&eacute;s de un proceso de modelado de papel peri&oacute;dico.</p>" },
  { :name => "Pastillaje", :description => "<p>El trabajo escult&oacute;rico al natural y/o con engobes es m&aacute;s decorativo que utilitario. Se realizan &aacute;ngeles, figuras y escenas costumbristas, figuras humanas con figuras fant&aacute;sticas que le brotan, animales m&uacute;sicos, ollas con asas y aplicaciones fant&aacute;sticas.</p>" },
  { :name => "Papel Recortado", :description => "<p>Papel recortado sin dise&ntilde;o previo, entintado por la orilla.</p>" }
], :without_protection => true )

ManufacturingTechnique.create([
  { :name => "Cartonería", :description => "<p>Se utiliza alambre, peri&oacute;dico, cart&oacute;n mojado, pintura, saber un poco de combinaci&oacute;n de color para dar con un buen terminado, cuando se tiene la figura hecha, se tiene que fondear de blanco, en la cartoner&iacute;a se puede ser tan perfecta como uno quiera, se puede hacer un trabajo casi hiperrealista.</p><iframe width='420' height='315' src='http://www.youtube.com/embed/m2u-n6TAvxU' frameborder='0' allowfullscreen></iframe>" },
], :without_protection => true)

## s3url = http://artemexicano.s3-website-us-east-1.amazonaws.com/MODEL/ID/FILE
## id's are in order of creation

Artist.create([
  { :name => "Cesar Durantón", :business_name => "Durantón", :address => "Mexico DF", :phone => "12341234", :email => "cesar.duranton@artepopular.com.mx", :remote_foto_url => "http://artemexicano.s3-website-us-east-1.amazonaws.com/artist/1/cesarduranton.jpg", :latitude => 19.432631, :longitud => -99.133447, :location => "Mexico DF", :biography => "<p>Trabajo dentro del arte popular mexicano, desde hace 15 a&ntilde;os elaboro piezas piezas tradicionales y otras de dise&ntilde;o propio en cartoner&iacute;a.</p>\r\n<p>&nbsp;</p>\r\n<p><iframe src=\"http://www.youtube.com/embed/oB2cbzOg4CY\" frameborder=\"0\" width=\"420\" height=\"315\"></iframe></p>" },
  { :name => "Jorge Rosano", :business_name => "Jorge Rosano", :address => "Tepoztlan, Morelos", :phone => "12341234", :email => "jorge.rosano@artepopular.com.mx", :remote_foto_url => "http://artemexicano.s3-website-us-east-1.amazonaws.com/artist/2/jorgerosano.jpg", :latitude => 18.986736, :longitud => -99.099512, :location => "", :biography => "<p>\"Las formas aparecen y yo quito lo que sobra\" -&nbsp;Jorge Rosano</p>\r\n<p>\"Mi arte est&aacute; relacionado con el papel recortado de los ind&iacute;genas otom&iacute;es (&ntilde;a&ntilde;u) herederos de las culturas prehisp&aacute;nicas m&aacute;s antiguas; no con el papel picado, una t&eacute;cnica que viene de China\" - Jorge Rosano</p>" }
], :without_protection => true )

Handcraft.create([
  { :name => "Máscara Dualidad", :description => "<p>Mascara de dualidad, auto retrato.</p>\r\n<p>Cartoneria y pintura a mano. Decoraci&oacute;n con brillantina y otros.</p>", :weight => 1.0, :height => 1.0, :width => 1.0, :depth => 1.0, :highlight => true, :status => 1, :artist_id => 1, :price => 0.0 },
  { :name => "La única demócrata", :description => "<p>El Omeyocan o para&iacute;so del sol est&aacute; presidido por Huitzilopochtli, Dios de la guerra, aqu&iacute; llegaban los muertos en combate y las mujeres que mor&iacute;an en el parto pues se les consideraba muertas en guerra ya que hab&iacute;an librado una gran batalla, la de parir.</p>\r\n<p>Era un lugar de gozo permanente en el que se festejaba al sol y se le acompa&ntilde;aba con m&uacute;sica, cantos y bailes. Los muertos que iban al Omeyocan volv&iacute;an al mundo despu&eacute;s de cuatro a&ntilde;os, convertidos en aves de hermosas plumas multicolores.</p>", :weight => 2.0, :height => 2.0, :width => 2.0, :depth => 1.0, :highlight => true, :status => 1, :artist_id => 2, :price => 0.0 },
  { :name => "Muerte Catrina", :description => "<p>Papel Recortado sin plantilla</p>", :weight => 2.0, :height => 2.0, :width => 2.0, :depth => 1.0, :highlight => true, :status => 1, :artist_id => 2, :price => 0.0 }
], :without_protection => true )

Photo.create([
  { :remote_filename_url => "http://artemexicano.s3-website-us-east-1.amazonaws.com/photo/1/cesarduranton01.jpg", :description => "Frente", :cover => true, :created_at => "2012-11-13 08:56:52", :updated_at => "2012-11-13 08:56:52", :handcraft_id => 1 },
  { :remote_filename_url => "http://artemexicano.s3-website-us-east-1.amazonaws.com/photo/2/jorgerosano02.jpg", :description => "Frente", :cover => true, :created_at => "2012-11-14 06:57:41", :updated_at => "2012-11-14 06:57:41", :handcraft_id => 2 },
  { :remote_filename_url => "http://artemexicano.s3-website-us-east-1.amazonaws.com/photo/3/jorgerosano01.jpg", :description => "Frente", :cover => true, :created_at => "2012-11-14 07:02:15", :updated_at => "2012-11-14 07:02:15", :handcraft_id => 3 }
], :without_protection => true )
