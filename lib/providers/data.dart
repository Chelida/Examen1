class PaysItem {
  final String id;
  final String nom;

  const PaysItem({this.id, this.nom});
}


const PaysList = const [
  PaysItem(
    id: '1',
    nom: "overview",
  ),
  PaysItem(
    id: '2',
    nom: "Tracs",
  ),
  PaysItem(
    id: '3',
    nom: "Albums",
  ),
  PaysItem(
    id: '4',
    nom: "Similar Art",
  ),
 
];