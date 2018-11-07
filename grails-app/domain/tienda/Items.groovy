package tienda

class Items {
    List<Disfraz> disfraces = new ArrayList();
    //static hasMany = [disfraces: Disfraz]
    static constraints = {
    }
    public void agregarDisfraz(Disfraz disfraz) {
        if (!this.disfraces.contains(disfraz)) { //si lo tiene, no lo agrega
            this.disfraces.add(disfraz);
        }        
    }
    
}
