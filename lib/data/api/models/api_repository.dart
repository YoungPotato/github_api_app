class ApiRepository {
  final String username;
  final String repositoryName;
  final num starsCount;
  final String lastUpdate;
  final String avatar;

  ApiRepository.fromApi(Map<String, dynamic> response)
      : username = response["owner"]["login"],
        repositoryName = response["name"],
        starsCount = response["stargazers_count"],
        lastUpdate = response["updated_at"],
        avatar = response["owner"]["avatar_url"];
}
