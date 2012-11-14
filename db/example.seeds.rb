# encoding: utf-8
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
  { :filename => "http://artemexicano.s3-website-us-east-1.amazonaws.com/photo/2/jorgerosano02.jpg", :description => "Frente", :cover => true, :created_at => "2012-11-14 06:57:41", :updated_at => "2012-11-14 06:57:41", :handcraft_id => 2 },
  { :filename => "http://artemexicano.s3-website-us-east-1.amazonaws.com/photo/3/jorgerosano01.jpg", :description => "Frente", :cover => true, :created_at => "2012-11-14 07:02:15", :updated_at => "2012-11-14 07:02:15", :handcraft_id => 3 }
], :without_protection => true )
