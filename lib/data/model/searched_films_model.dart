import 'dart:convert';

import 'package:test_appfox/domain/entity/searched_films_entity.dart';

SearchedFilmsModel searchedFilmsModelFromJson(String str) =>
    SearchedFilmsModel.fromJson(json.decode(str));

String searchedFilmsModelToJson(SearchedFilmsModel data) =>
    json.encode(data.toJson());

class SearchedFilmsModel {
  List<DocModel> docs;
  int total;
  int limit;
  int page;
  int pages;

  SearchedFilmsModel({
    required this.docs,
    required this.total,
    required this.limit,
    required this.page,
    required this.pages,
  });

  factory SearchedFilmsModel.fromJson(Map<String, dynamic> json) =>
      SearchedFilmsModel(
        docs:
            List<DocModel>.from(json["docs"].map((x) => DocModel.fromJson(x))),
        total: json["total"],
        limit: json["limit"],
        page: json["page"],
        pages: json["pages"],
      );

  Map<String, dynamic> toJson() => {
        "docs": List<dynamic>.from(docs.map((x) => x.toJson())),
        "total": total,
        "limit": limit,
        "page": page,
        "pages": pages,
      };

  factory SearchedFilmsModel.fromEntity(
          SearchedFilmsEntity searchedFilmsEntity) =>
      SearchedFilmsModel(
          docs: List<DocModel>.from(
              searchedFilmsEntity.docs.map((e) => DocModel.fromEntity(e))),
          total: searchedFilmsEntity.total,
          limit: searchedFilmsEntity.limit,
          page: searchedFilmsEntity.page,
          pages: searchedFilmsEntity.pages);

  SearchedFilmsEntity toEntity() => SearchedFilmsEntity(
      docs: List<DocEntity>.from(docs.map((e) => e.toEntity())),
      total: total,
      limit: limit,
      page: page,
      pages: pages);
}

class DocModel {
  int id;
  String name;
  String? alternativeNameModel;
  String? enNameModel;
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
  int? ageRatingModel;
  dynamic top10;
  dynamic top250;
  int typeNumber;
  String? status;
  List<NameModel> names;
  ExternalIdModel externalId;
  BackdropModel poster;
  BackdropModel backdrop;
  RatingModel rating;
  RatingModel votes;
  List<CountryModel> genres;
  List<CountryModel> countries;
  List<ReleaseYearModel> releaseYears;

  DocModel({
    required this.id,
    required this.name,
    required this.alternativeNameModel,
    required this.enNameModel,
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
    required this.ageRatingModel,
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

  factory DocModel.fromJson(Map<String, dynamic> json) => DocModel(
        id: json["id"],
        name: json["name"],
        alternativeNameModel: json["alternativeNameModel"],
        enNameModel: json["enNameModel"],
        type: json["type"],
        year: json["year"],
        description: json["description"],
        shortDescription: json["shortDescription"],
        movieLength: json["movieLength"],
        isSeries: json["isSeries"],
        ticketsOnSale: json["ticketsOnSale"],
        totalSeriesLength: json["totalSeriesLength"],
        seriesLength: json["seriesLength"],
        ratingMpaa: json["ratingMpaa"],
        ageRatingModel: json["ageRatingModel"],
        top10: json["top10"],
        top250: json["top250"],
        typeNumber: json["typeNumber"],
        status: json["status"],
        names: List<NameModel>.from(
            json["names"].map((x) => NameModel.fromJson(x))),
        externalId: ExternalIdModel.fromJson(json["externalId"]),
        poster: BackdropModel.fromJson(json["poster"]),
        backdrop: BackdropModel.fromJson(json["backdrop"]),
        rating: RatingModel.fromJson(json["rating"]),
        votes: RatingModel.fromJson(json["votes"]),
        genres: List<CountryModel>.from(
            json["genres"].map((x) => CountryModel.fromJson(x))),
        countries: List<CountryModel>.from(
            json["countries"].map((x) => CountryModel.fromJson(x))),
        releaseYears: List<ReleaseYearModel>.from(
            json["releaseYears"].map((x) => ReleaseYearModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "alternativeNameModel": alternativeNameModel,
        "enNameModel": enNameModel,
        "type": type,
        "year": year,
        "description": description,
        "shortDescription": shortDescription,
        "movieLength": movieLength,
        "isSeries": isSeries,
        "ticketsOnSale": ticketsOnSale,
        "totalSeriesLength": totalSeriesLength,
        "seriesLength": seriesLength,
        "ratingMpaa": ratingMpaa,
        "ageRatingModel": ageRatingModel,
        "top10": top10,
        "top250": top250,
        "typeNumber": typeNumber,
        "status": status,
        "names": List<dynamic>.from(names.map((x) => x.toJson())),
        "externalId": externalId.toJson(),
        "poster": poster.toJson(),
        "backdrop": backdrop.toJson(),
        "rating": rating.toJson(),
        "votes": votes.toJson(),
        "genres": List<dynamic>.from(genres.map((x) => x.toJson())),
        "countries": List<dynamic>.from(countries.map((x) => x.toJson())),
        "releaseYears": List<dynamic>.from(releaseYears.map((x) => x.toJson())),
      };

  factory DocModel.fromEntity(DocEntity docEntity) => DocModel(
        id: docEntity.id,
        name: docEntity.name,
        alternativeNameModel: docEntity.alternativeNameEntity,
        enNameModel: docEntity.enNameEntity,
        type: docEntity.type,
        year: docEntity.year,
        description: docEntity.description,
        shortDescription: docEntity.shortDescription,
        movieLength: docEntity.movieLength,
        isSeries: docEntity.isSeries,
        ticketsOnSale: docEntity.ticketsOnSale,
        totalSeriesLength: docEntity.totalSeriesLength,
        seriesLength: docEntity.seriesLength,
        ratingMpaa: docEntity.ratingMpaa,
        ageRatingModel: docEntity.ageRatingEntity,
        top10: docEntity.top10,
        top250: docEntity.top250,
        typeNumber: docEntity.typeNumber,
        status: docEntity.status,
        names: List<NameModel>.from(
            docEntity.names.map((e) => NameModel.fromEntity(e))),
        externalId: ExternalIdModel.fromEntity(docEntity.externalId),
        poster: BackdropModel.fromEntity(docEntity.poster),
        backdrop: BackdropModel.fromEntity(docEntity.backdrop),
        rating: RatingModel.fromEntity(docEntity.rating),
        votes: RatingModel.fromEntity(docEntity.votes),
        genres: List<CountryModel>.from(
            docEntity.genres.map((e) => CountryModel.fromEntity(e))),
        countries: List<CountryModel>.from(
            docEntity.countries.map((e) => CountryModel.fromEntity(e))),
        releaseYears: List<ReleaseYearModel>.from(
            docEntity.releaseYears.map((e) => ReleaseYearModel.fromEntity(e))),
      );

  DocEntity toEntity() => DocEntity(
        id: id,
        name: name,
        alternativeNameEntity: alternativeNameModel ?? "",
        enNameEntity: enNameModel,
        type: type,
        year: year,
        description: description,
        shortDescription: shortDescription,
        movieLength: movieLength,
        isSeries: isSeries,
        ticketsOnSale: ticketsOnSale,
        totalSeriesLength: totalSeriesLength,
        seriesLength: seriesLength,
        ratingMpaa: ratingMpaa,
        ageRatingEntity: ageRatingModel,
        top10: top10,
        top250: top250,
        typeNumber: typeNumber,
        status: status,
        names: List<NameEntity>.from(names.map((e) => e.toEntity())),
        externalId: externalId.toEntity(),
        poster: poster.toEntity(),
        backdrop: backdrop.toEntity(),
        rating: rating.toEntity(),
        votes: votes.toEntity(),
        genres: List<CountryEntity>.from(genres.map((e) => e.toEntity())),
        countries: List<CountryEntity>.from(countries.map((e) => e.toEntity())),
        releaseYears:
            List<ReleaseYearEntity>.from(releaseYears.map((e) => e.toEntity())),
      );
}

class BackdropModel {
  String? url;
  String? previewUrl;

  BackdropModel({
    required this.url,
    this.previewUrl,
  });

  factory BackdropModel.fromJson(Map<String, dynamic> json) => BackdropModel(
        url: json["url"],
        previewUrl: json["previewUrl"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "previewUrl": previewUrl,
      };

  factory BackdropModel.fromEntity(BackdropEntity backdropEntity) =>
      BackdropModel(
          url: backdropEntity.url, previewUrl: backdropEntity.previewUrl);

  BackdropEntity toEntity() => BackdropEntity(url: url, previewUrl: previewUrl);
}

class CountryModel {
  String name;

  CountryModel({
    required this.name,
  });

  factory CountryModel.fromJson(Map<String, dynamic> json) => CountryModel(
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
      };

  factory CountryModel.fromEntity(CountryEntity countryEntity) =>
      CountryModel(name: countryEntity.name);

  CountryEntity toEntity() => CountryEntity(name: name);
}

class ExternalIdModel {
  String? imdb;
  int? tmdb;
  dynamic kpHd;

  ExternalIdModel({
    this.imdb,
    this.tmdb,
    this.kpHd,
  });

  factory ExternalIdModel.fromJson(Map<String, dynamic> json) =>
      ExternalIdModel(
        imdb: json["imdb"],
        tmdb: json["tmdb"],
        kpHd: json["kpHD"],
      );

  Map<String, dynamic> toJson() => {
        "imdb": imdb,
        "tmdb": tmdb,
        "kpHD": kpHd,
      };

  factory ExternalIdModel.fromEntity(ExternalIdEntity externalIdEntity) =>
      ExternalIdModel(
          imdb: externalIdEntity.imdb,
          tmdb: externalIdEntity.tmdb,
          kpHd: externalIdEntity.kpHd);

  ExternalIdEntity toEntity() =>
      ExternalIdEntity(imdb: imdb, tmdb: tmdb, kpHd: kpHd);
}

class NameModel {
  String name;
  String? language;
  String? type;

  NameModel({
    required this.name,
    this.language,
    this.type,
  });

  factory NameModel.fromJson(Map<String, dynamic> json) => NameModel(
        name: json["name"],
        language: json["language"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "language": language,
        "type": type,
      };

  factory NameModel.fromEntity(NameEntity nameEntity) =>
      NameModel(name: nameEntity.name);

  NameEntity toEntity() => NameEntity(name: name);
}

class RatingModel {
  double kp;
  double imdb;
  double filmCritics;

  RatingModel({
    required this.kp,
    required this.imdb,
    required this.filmCritics,
  });

  factory RatingModel.fromJson(Map<String, dynamic> json) => RatingModel(
        kp: json["kp"]?.toDouble(),
        imdb: json["imdb"]?.toDouble(),
        filmCritics: json["filmCritics"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "kp": kp,
        "imdb": imdb,
        "filmCritics": filmCritics,
      };

  factory RatingModel.fromEntity(RatingEntity ratingEntity) => RatingModel(
        kp: ratingEntity.kp,
        imdb: ratingEntity.imdb,
        filmCritics: ratingEntity.filmCritics,
      );

  RatingEntity toEntity() => RatingEntity(
        kp: kp,
        imdb: imdb,
        filmCritics: filmCritics,
      );
}

class ReleaseYearModel {
  int start;
  int? end;

  ReleaseYearModel({
    required this.start,
    required this.end,
  });

  factory ReleaseYearModel.fromJson(Map<String, dynamic> json) =>
      ReleaseYearModel(
        start: json["start"],
        end: json["end"],
      );

  Map<String, dynamic> toJson() => {
        "start": start,
        "end": end,
      };

  factory ReleaseYearModel.fromEntity(ReleaseYearEntity releaseYearEntity) =>
      ReleaseYearModel(
        start: releaseYearEntity.start,
        end: releaseYearEntity.end,
      );

  ReleaseYearEntity toEntity() => ReleaseYearEntity(start: start, end: end);
}
