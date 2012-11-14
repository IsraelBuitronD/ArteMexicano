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
