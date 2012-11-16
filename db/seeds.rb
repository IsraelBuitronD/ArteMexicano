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
  { :name => "Barro", :description => "<p>El barro es una mezcla semil&iacute;quida de agua y tierra compuesta por sedimentos, part&iacute;culas de polvo y arcilla. Los dep&oacute;sitos de barro se endurecen con el paso del tiempo hasta convertirse en lutita.</p>", :state_id => 19 },
  { :name => "Madera de copal", :description => "<p>Madera de copal</p>", :state_id => 19 }
], :without_protection => true )

Technique.create([
  { :name => "Cartonería", :description => "<p>La Cartoner&iacute;a es considerada un arte popular mexicano, consiste en una t&eacute;cnica con la que se crean figuras a trav&eacute;s de un proceso de modelado de papel peri&oacute;dico.</p>" },
  { :name => "Pastillaje", :description => "<p>El trabajo escult&oacute;rico al natural y/o con engobes es m&aacute;s decorativo que utilitario. Se realizan &aacute;ngeles, figuras y escenas costumbristas, figuras humanas con figuras fant&aacute;sticas que le brotan, animales m&uacute;sicos, ollas con asas y aplicaciones fant&aacute;sticas.</p>" },
  { :name => "Papel Recortado", :description => "<p>Papel recortado sin dise&ntilde;o previo, entintado por la orilla.</p>" },
  { :name => "Tallado en madera", :description => "<p>Tallado en madera</p>" }
], :without_protection => true )

ManufacturingTechnique.create([
  { :name => "Cartonería", :description => "<p>Se utiliza alambre, peri&oacute;dico, cart&oacute;n mojado, pintura, saber un poco de combinaci&oacute;n de color para dar con un buen terminado, cuando se tiene la figura hecha, se tiene que fondear de blanco, en la cartoner&iacute;a se puede ser tan perfecta como uno quiera, se puede hacer un trabajo casi hiperrealista.</p><iframe width='420' height='315' src='http://www.youtube.com/embed/m2u-n6TAvxU' frameborder='0' allowfullscreen></iframe>" },
  { :name => "Tallado madera de copal", :description => "<p>La creaci&oacute;n de las figuras se realiza en varias etapas. Cuando la madera est&aacute; verde, los artesanos seleccionan una rama. Le quitan la corteza y luego, con un machete, le dan la forma general. Los artesanos disponen de una amplia variedad de herramientas: formones, cinceles, machetes y navajas. La t&eacute;cnica y arte se aprende viendo a otros talladores, pero la elecci&oacute;n de herramientas depende de la experiencia individual.</p>\r\n<p>Algunas figuras contienen partes removibles, como orejas, alas y colas elaboradas de otras piezas de madera. Estas piezas se unen a la figura con clavos, pegamento o se encajan en ranuras. Esta caracter&iacute;stica permite desarmarlas y transportarlas con facilidad, en particular si se trata de figuras complicadas con muchas partes.</p>\r\n<p>Cuando la demanda de alebrijes aument&oacute; en la d&eacute;cada de los a&ntilde;os 80, las esposas e hijos de los artesanos se incorporaron a las tareas de lijado y pintado. Muy pronto la elaboraci&oacute;n de figuras se convirti&oacute; en una actividad familiar. Una vez talladas, las figuras se secan al Sol. A veces primero se remojan en gasolina para protegerlas de los insectos. Secas, las figuras se lijan y posteriormente se pintan.</p>\r\n<p>El pintado y decorado se realiza en dos etapas. Primero se aplica r&aacute;pidamente una capa de base, en ocasiones con una esponja en lugar de un pincel. Luego, con pinceles de diferentes grosores se decoran cuidadosamente con puntos, l&iacute;neas onduladas, figuras geom&eacute;tricas u otros dise&ntilde;os. Muchas veces la aplicaci&oacute;n de la base se asigna a ni&ntilde;os 0 a los aprendices. El decorado es m&aacute;s dif&iacute;cil y est&aacute; a cargo de los artesanos experimentados.</p>\r\n<p>Hasta 1985, la mayor parte de los artesanos utilizaba anilina, un pigmento en polvo que se mezcla con agua. Si bien algunos a&uacute;n la utilizan, ahora la mayor&iacute;a usa pinturas acr&iacute;licas (de vin&iacute;lico), las cuales son m&aacute;s brillantes y espesas y se escurren menos.</p>" }
], :without_protection => true)

## s3url = http://artemexicano.s3-website-us-east-1.amazonaws.com/MODEL/ID/FILE
## id's are in order of creation

Artist.create([
  { :name => "Cesar Durantón", :business_name => "Durantón", :address => "Mexico DF", :phone => "12341234", :email => "cesar.duranton@artepopular.com.mx", :remote_foto_url => "http://artemexicano.s3-website-us-east-1.amazonaws.com/artist/1/cesarduranton.jpg", :latitude => 19.432631, :longitud => -99.133447, :location => "Mexico DF", :biography => "<p>Trabajo dentro del arte popular mexicano, desde hace 15 a&ntilde;os elaboro piezas piezas tradicionales y otras de dise&ntilde;o propio en cartoner&iacute;a.</p>\r\n<p>&nbsp;</p>\r\n<p><iframe src=\"http://www.youtube.com/embed/oB2cbzOg4CY\" frameborder=\"0\" width=\"420\" height=\"315\"></iframe></p>" },
  { :name => "Jorge Rosano", :business_name => "Jorge Rosano", :address => "Tepoztlan, Morelos", :phone => "12341234", :email => "jorge.rosano@artepopular.com.mx", :remote_foto_url => "http://artemexicano.s3-website-us-east-1.amazonaws.com/artist/2/jorgerosano.jpg", :latitude => 18.986736, :longitud => -99.099512, :location => "", :biography => "<p>\"Las formas aparecen y yo quito lo que sobra\" -&nbsp;Jorge Rosano</p>\r\n<p>\"Mi arte est&aacute; relacionado con el papel recortado de los ind&iacute;genas otom&iacute;es (&ntilde;a&ntilde;u) herederos de las culturas prehisp&aacute;nicas m&aacute;s antiguas; no con el papel picado, una t&eacute;cnica que viene de China\" - Jorge Rosano</p>" },
  { :name => "Jacobo Ángeles", :business_name => "Jacobo y María Ángeles", :address => "Calle Olvido #9 San Martín Tilcajete, Ocotlán, Oaxaca", :phone => "01 (951) 524 9047 & 5249027 Desde EE.UU: 01 152 (951)", :email => "angeles@tilcajete.org", :remote_foto_url => "http://artemexicano.s3-website-us-east-1.amazonaws.com/artist/3/41465_100001543024925_4914_n.jpg", :latitude => 16.858393, :longitud => -96.692766, :location => "San Martín Tilcajete, Oaxaca", :biography => "<p>Jacobo y Mar&iacute;a son artesanos talentosos que gozan de sofisticaci&oacute;n art&iacute;stica. <br /> Ambos han expresado en sus piezas, una b&uacute;squeda de sus ra&iacute;ces y una iniciativa de recuperar caracter&iacute;sticas del antiguo arte zapoteca. Una de sus aspiraciones es que tanto su trabajo, como el de otros miembros de la comunidad cuyas piezas sean tambi&eacute;n originales y de calidad, sean reconocidos como verdadero arte. <br /> Para Jacobo y Mar&iacute;a su trabajo es una fuente de satisfacci&oacute;n, al igual que la siembra del campo, a la cual sol&iacute;an dedicarse durante su infancia. Ellos disfrutan mucho la visita de personas interesadas en su trabajo y su estilo de vida, por lo que siempre comparten sus procesos de producci&oacute;n de las figuras zapotecas con los visitantes del taller. Ambos est&aacute;n muy interesados en la educaci&oacute;n y la transmisi&oacute;n de los conocimientos, as&iacute; que adem&aacute;s de hacer demostraciones, tambi&eacute;n organizan peque&ntilde;os talleres educativos para que cualquier persona pueda crear y disfrutar de una figura zapoteca. <br /> Sus piezas han viajado por el mundo, y ellos continuamente realizan exhibiciones y demostraciones en EEUU. Tambi&eacute;n imparten cada verano talleres de tallado y decorado en algunas instituciones de ese pa&iacute;s.<br /> Como propietarios del taller, Jacobo y Mar&iacute;a, adem&aacute;s de dirigirlo, tambi&eacute;n trabajan todos los d&iacute;as en la creaci&oacute;n de las piezas. Jacobo dedica parte de su tiempo en el tallado y decoraci&oacute;n de las figuras, y por su lado Mar&iacute;a est&aacute; encargada de dise&ntilde;ar, decorar, y crear los colores naturales. Con el paso de los a&ntilde;os juntos han perfeccionado su estilo original y &uacute;nico en el pueblo de San Mart&iacute;n Tilcajete.</p>" }
], :without_protection => true )

Handcraft.create([
  { :name => "Máscara Dualidad", :description => "<p>Mascara de dualidad, auto retrato.</p>\r\n<p>Cartoneria y pintura a mano. Decoraci&oacute;n con brillantina y otros.</p>", :weight => 1.0, :height => 1.0, :width => 1.0, :depth => 1.0, :highlight => true, :status => 1, :artist_id => 1, :price => 0.0 },
  { :name => "La única demócrata", :description => "<p>El Omeyocan o para&iacute;so del sol est&aacute; presidido por Huitzilopochtli, Dios de la guerra, aqu&iacute; llegaban los muertos en combate y las mujeres que mor&iacute;an en el parto pues se les consideraba muertas en guerra ya que hab&iacute;an librado una gran batalla, la de parir.</p>\r\n<p>Era un lugar de gozo permanente en el que se festejaba al sol y se le acompa&ntilde;aba con m&uacute;sica, cantos y bailes. Los muertos que iban al Omeyocan volv&iacute;an al mundo despu&eacute;s de cuatro a&ntilde;os, convertidos en aves de hermosas plumas multicolores.</p>", :weight => 2.0, :height => 2.0, :width => 2.0, :depth => 1.0, :highlight => true, :status => 1, :artist_id => 2, :price => 0.0 },
  { :name => "Muerte Catrina", :description => "<p>Papel Recortado sin plantilla</p>", :weight => 2.0, :height => 2.0, :width => 2.0, :depth => 1.0, :highlight => true, :status => 1, :artist_id => 2, :price => 0.0 },
  { :name => "Armadillo", :description => "<p>Armadillo tallado en madera de copal al estilo indigena</p>", :weight => 2.5, :height => 30.48, :width => 50.8, :depth => 12.7, :highlight => false, :status => 1, :artist_id => 3, :price => 0.0 }
], :without_protection => true )

Photo.create([
  { :remote_filename_url => "http://artemexicano.s3-website-us-east-1.amazonaws.com/photo/1/cesarduranton01.jpg", :description => "Frente", :cover => true, :created_at => "2012-11-13 08:56:52", :updated_at => "2012-11-13 08:56:52", :handcraft_id => 1 },
  { :remote_filename_url => "http://artemexicano.s3-website-us-east-1.amazonaws.com/photo/2/jorgerosano02.jpg", :description => "Frente", :cover => true, :created_at => "2012-11-14 06:57:41", :updated_at => "2012-11-14 06:57:41", :handcraft_id => 2 },
  { :remote_filename_url => "http://artemexicano.s3-website-us-east-1.amazonaws.com/photo/3/jorgerosano01.jpg", :description => "Frente", :cover => true, :created_at => "2012-11-14 07:02:15", :updated_at => "2012-11-14 07:02:15", :handcraft_id => 3 },
  { :remote_filename_url => "http://artemexicano.s3-website-us-east-1.amazonaws.com/photo/4/jacoboangarmad2.jpg", :description => "Vista de la artesanía 1", :cover => true, :created_at => "2012-11-15 06:08:42", :updated_at => "2012-11-15 06:08:42", :handcraft_id => 4 },
  { :remote_filename_url => "http://artemexicano.s3-website-us-east-1.amazonaws.com/photo/9/jacoboangarmad7.jpg", :description => "Vista de la artesanía 6", :cover => nil, :created_at => "2012-11-15 06:08:52", :updated_at => "2012-11-15 06:55:32", :handcraft_id => 4 },
  { :remote_filename_url => "http://artemexicano.s3-website-us-east-1.amazonaws.com/photo/10/jacoboangarmad8.jpg", :description => "Vista de la artesanía 7", :cover => nil, :created_at => "2012-11-15 06:08:55", :updated_at => "2012-11-15 06:55:32", :handcraft_id => 4 },
  { :remote_filename_url => "http://artemexicano.s3-website-us-east-1.amazonaws.com/photo/11/jacoboangarmad9.jpg", :description => "Vista de la artesanía 8", :cover => nil, :created_at => "2012-11-15 06:08:56", :updated_at => "2012-11-15 06:55:32", :handcraft_id => 4 },
  { :remote_filename_url => "http://artemexicano.s3-website-us-east-1.amazonaws.com/photo/5/jacoboangarmad2.jpg", :description => "Vista de la artesanía 2", :cover => nil, :created_at => "2012-11-15 06:08:45", :updated_at => "2012-11-15 06:08:45", :handcraft_id => 4 },
  { :remote_filename_url => "http://artemexicano.s3-website-us-east-1.amazonaws.com/photo/6/jacoboangarmad3.jpg", :description => "Vista de la artesanía 3", :cover => nil, :created_at => "2012-11-15 06:08:47", :updated_at => "2012-11-15 06:08:47", :handcraft_id => 4 },
  { :remote_filename_url => "http://artemexicano.s3-website-us-east-1.amazonaws.com/photo/7/jacoboangarmad4.jpg", :description => "Vista de la artesanía 4", :cover => nil, :created_at => "2012-11-15 06:08:48", :updated_at => "2012-11-15 06:08:48", :handcraft_id => 4 },
  { :remote_filename_url => "http://artemexicano.s3-website-us-east-1.amazonaws.com/photo/8/jacoboangarmad5.jpg", :description => "Vista de la artesanía 5", :cover => nil, :created_at => "2012-11-15 06:08:51", :updated_at => "2012-11-15 06:08:51", :handcraft_id => 4 }
], :without_protection => true )
