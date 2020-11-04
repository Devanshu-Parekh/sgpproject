class ClgDetails{
  int rank;
  ClgDetails({this.rank});
  static List<ClgDetails> getClgDetail(){
    return <ClgDetails>[
      ClgDetails(rank: 2000),
      // ClgDetails(rank: 3000),
      // ClgDetails(rank: 4000),
      // ClgDetails(rank: 5000),

    ];

  }
}