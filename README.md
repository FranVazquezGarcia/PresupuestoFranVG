# PresupuestoFranVG
-Para esta aplicación primero se crea un index.jsp, el cual mediante 2 checkbox pregunta al usuario que tipo de seguro quiere, esta informacion se recoge en el
servlet Eleccion, el cual guarda estas elecciones en los atributos de un objeto de tipo EleccionBean, y este se guardara en sesion para recuperarlo mas tarde.
 Segun se seleccione un checkbox u otro redirigira al formulario edificio.jsp o contenido.jsp, si se seleccionan ambos primero se redirige a edificio. Una vez enviada la informacion del formulario edificio.jsp,
se envia la informacion al servlet Edificio.java, este crea un objeto de tipo EdificioBean, y guarda en sus atributos los valores del usuario, y la prima,
que la calcula mediante el metodo CalculosEdificio de la clase CalcularCuota, a la cual le pasamos el objeto de edificio como parametro, este objeto ya debe
tener establecidos los valores introducidos por el usuario. Una vez se calcula la prima se guarda el valor en el mismo objeto. Despues se guarda este objeto en sesion para
recuperarlo en la vista final, y se obtiene de la sesion el objeto de tipo EleccionBean, mediante el cual sabemos si debemos redirigir al formulario de contenido.jsp,
o ir a la pagina final directamente. Con el contenido es igual que edificio, se piden los datos al usuario en el contenido.jsp, y se recupera esta informacion en
el servlet Contenido, el cual guarda estos valores en un objeto ContenidoBean, se lo pasa como parametro al metodo CalculosContenido de la clase CalcularCuota, obenemos asi la prima
y guardamos el resultado en el objeto ContenidoBean. Despues se guarda el objeto en sesion y se redirige a verCuota.jsp, el cual muestra la informacion introducida por el usuario.