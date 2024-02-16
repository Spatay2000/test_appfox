class SearchedFilmsEntity {
  List<DocEntity> docs;
  int total;
  int limit;
  int page;
  int pages;

  SearchedFilmsEntity({
    required this.docs,
    required this.total,
    required this.limit,
    required this.page,
    required this.pages,
  });

  SearchedFilmsEntity copyWith({
    List<DocEntity>? docs,
    int? total,
    int? limit,
    int? page,
    int? pages,
  }) =>
      SearchedFilmsEntity(
        docs: docs ?? this.docs,
        total: total ?? this.total,
        limit: limit ?? this.limit,
        page: page ?? this.page,
        pages: pages ?? this.pages,
      );
}

class DocEntity {
  int id;
  String name;
  String? alternativeNameEntity;
  String? enNameEntity;
  String? type;
  int year;
  String description;
  String shortDescription;
  int movieLength;
  bool isSeries;
  bool ticketsOnSale;
  dynamic totalSeriesLength;
  int? seriesLength;
  dynamic ratingMpaa;
  int? ageRatingEntity;
  dynamic top10;
  dynamic top250;
  int typeNumber;
  String? status;
  List<NameEntity> names;
  ExternalIdEntity externalId;
  BackdropEntity poster;
  BackdropEntity backdrop;
  RatingEntity rating;
  RatingEntity votes;
  List<CountryEntity> genres;
  List<CountryEntity> countries;
  List<ReleaseYearEntity> releaseYears;

  DocEntity({
    required this.id,
    required this.name,
    required this.alternativeNameEntity,
    required this.enNameEntity,
    required this.type,
    required this.year,
    required this.description,
    required this.shortDescription,
    required this.movieLength,
    required this.isSeries,
    required this.ticketsOnSale,
    required this.totalSeriesLength,
    required this.seriesLength,
    required this.ratingMpaa,
    required this.ageRatingEntity,
    required this.top10,
    required this.top250,
    required this.typeNumber,
    required this.status,
    required this.names,
    required this.externalId,
    required this.poster,
    required this.backdrop,
    required this.rating,
    required this.votes,
    required this.genres,
    required this.countries,
    required this.releaseYears,
  });

  DocEntity copyWith({
    int? id,
    String? name,
    String? alternativeNameEntity,
    String? enNameEntity,
    String? type,
    int? year,
    String? description,
    String? shortDescription,
    int? movieLength,
    bool? isSeries,
    bool? ticketsOnSale,
    dynamic totalSeriesLength,
    int? seriesLength,
    dynamic ratingMpaa,
    int? ageRatingEntity,
    dynamic top10,
    dynamic top250,
    int? typeNumber,
    String? status,
    List<NameEntity>? names,
    ExternalIdEntity? externalId,
    BackdropEntity? logo,
    BackdropEntity? poster,
    BackdropEntity? backdrop,
    RatingEntity? rating,
    RatingEntity? votes,
    List<CountryEntity>? genres,
    List<CountryEntity>? countries,
    List<ReleaseYearEntity>? releaseYears,
  }) =>
      DocEntity(
        id: id ?? this.id,
        name: name ?? this.name,
        alternativeNameEntity: alternativeNameEntity ?? this.alternativeNameEntity,
        enNameEntity: enNameEntity ?? this.enNameEntity,
        type: type ?? this.type,
        year: year ?? this.year,
        description: description ?? this.description,
        shortDescription: shortDescription ?? this.shortDescription,
        movieLength: movieLength ?? this.movieLength,
        isSeries: isSeries ?? this.isSeries,
        ticketsOnSale: ticketsOnSale ?? this.ticketsOnSale,
        totalSeriesLength: totalSeriesLength ?? this.totalSeriesLength,
        seriesLength: seriesLength ?? this.seriesLength,
        ratingMpaa: ratingMpaa ?? this.ratingMpaa,
        ageRatingEntity: ageRatingEntity ?? this.ageRatingEntity,
        top10: top10 ?? this.top10,
        top250: top250 ?? this.top250,
        typeNumber: typeNumber ?? this.typeNumber,
        status: status ?? this.status,
        names: names ?? this.names,
        externalId: externalId ?? this.externalId,
        poster: poster ?? this.poster,
        backdrop: backdrop ?? this.backdrop,
        rating: rating ?? this.rating,
        votes: votes ?? this.votes,
        genres: genres ?? this.genres,
        countries: countries ?? this.countries,
        releaseYears: releaseYears ?? this.releaseYears,
      );
}

class BackdropEntity {
  String? url;
  String? previewUrl;

  BackdropEntity({
    required this.url,
    this.previewUrl,
  });

  BackdropEntity copyWith({
    String? url,
    String? previewUrl,
  }) =>
      BackdropEntity(
        url: url ?? this.url,
        previewUrl: previewUrl ?? this.previewUrl,
      );
}

class CountryEntity {
  String name;

  CountryEntity({
    required this.name,
  });

  CountryEntity copyWith({
    String? name,
  }) =>
      CountryEntity(
        name: name ?? this.name,
      );
}

class ExternalIdEntity {
  String? imdb;
  int? tmdb;
  dynamic kpHd;

  ExternalIdEntity({
    this.imdb,
    this.tmdb,
    this.kpHd,
  });

  ExternalIdEntity copyWith({
    String? imdb,
    int? tmdb,
    dynamic kpHd,
  }) =>
      ExternalIdEntity(
        imdb: imdb ?? this.imdb,
        tmdb: tmdb ?? this.tmdb,
        kpHd: kpHd ?? this.kpHd,
      );
}

class NameEntity {
  String name;
  String? language;
  String? type;

  NameEntity({
    required this.name,
    this.language,
    this.type,
  });

  NameEntity copyWith({
    String? name,
    String? language,
    String? type,
  }) =>
      NameEntity(
        name: name ?? this.name,
        language: language ?? this.language,
        type: type ?? this.type,
      );
}

class RatingEntity {
  double kp;
  double imdb;
  double filmCritics;

  RatingEntity({
    required this.kp,
    required this.imdb,
    required this.filmCritics,
  });

  RatingEntity copyWith({
    double? kp,
    double? imdb,
    double? filmCritics,
  }) =>
      RatingEntity(
        kp: kp ?? this.kp,
        imdb: imdb ?? this.imdb,
        filmCritics: filmCritics ?? this.filmCritics,
      );
}

class ReleaseYearEntity {
  int start;
  int? end;

  ReleaseYearEntity({
    required this.start,
    required this.end,
  });

  ReleaseYearEntity copyWith({
    int? start,
    int? end,
  }) =>
      ReleaseYearEntity(
        start: start ?? this.start,
        end: end ?? this.end,
      );
}
