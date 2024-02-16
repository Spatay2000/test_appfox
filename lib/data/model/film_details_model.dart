import 'dart:convert';

import 'package:test_appfox/data/model/searched_films_model.dart';
import 'package:test_appfox/domain/entity/film_details_entity.dart';

FilmDetailModel filmDetailModelFromJson(String str) =>
    FilmDetailModel.fromJson(json.decode(str));

String filmDetailModelToJson(FilmDetailModel data) =>
    json.encode(data.toJson());

class FilmDetailModel {
  final String? documentId;
  FeesModel? fees;
  dynamic status;
  ExternalIdModel? externalId;
  RatingModel? rating;
  RatingModel? votes;
  BackdropModel? backdrop;
  int? movieLength;
  ImagesModel? images;
  List<ProductionCompanyModel>? productionCompanies;
  List<SpokenLanguageModel>? spokenLanguages;
  int? id;
  String? type;
  String? name;
  String? description;
  DistributorsModel? distributors;
  PremiereModel? premiereModel;
  String? slogan;
  int? year;
  BackdropModel? poster;
  dynamic facts;
  List<CountryModel>? genres;
  List<CountryModel>? countries;
  dynamic seasonsInfo;
  List<PersonModel>? persons;
  List<dynamic>? lists;
  int? typeNumber;
  String? alternativeName;
  dynamic enName;
  List<NameModel>? names;
  int? ageRating;
  String? ratingMpaa;
  DateTime? updatedAt;
  String? shortDescription;
  TechnologyModel? technology;
  bool? ticketsOnSale;
  List<SequelsAndPrequelModel>? sequelsAndPrequels;
  List<SequelsAndPrequelModel>? similarMovies;
  dynamic top10;
  dynamic top250;
  dynamic deletedAt;
  bool? isSeries;
  dynamic seriesLength;
  dynamic totalSeriesLength;
  dynamic networks;
  VideosModel? videos;

  FilmDetailModel({
    required this.fees,
    this.documentId,
    required this.status,
    required this.externalId,
    required this.rating,
    required this.votes,
    required this.backdrop,
    required this.premiereModel,
    required this.movieLength,
    required this.images,
    required this.productionCompanies,
    required this.spokenLanguages,
    required this.id,
    required this.type,
    required this.name,
    required this.description,
    required this.distributors,
    required this.slogan,
    required this.year,
    required this.poster,
    required this.facts,
    required this.genres,
    required this.countries,
    required this.seasonsInfo,
    required this.persons,
    required this.lists,
    required this.typeNumber,
    required this.alternativeName,
    required this.enName,
    required this.names,
    required this.ageRating,
    required this.ratingMpaa,
    required this.updatedAt,
    required this.shortDescription,
    required this.technology,
    required this.ticketsOnSale,
    required this.sequelsAndPrequels,
    required this.similarMovies,
    required this.top10,
    required this.top250,
    required this.deletedAt,
    required this.isSeries,
    required this.seriesLength,
    required this.totalSeriesLength,
    required this.networks,
    required this.videos,
  });

  factory FilmDetailModel.fromJson(Map<String, dynamic> json,
          {String? docId}) =>
      FilmDetailModel(
        documentId: docId,
        fees: json["fees"] == null ? null : FeesModel.fromJson(json["fees"]),
        status: json["status"],
        premiereModel: json["premiere"] == null
            ? null
            : PremiereModel.fromJson(json["premiere"]),
        externalId: json["externalId"] == null
            ? null
            : ExternalIdModel.fromJson(json["externalId"]),
        rating: json["rating"] == null
            ? null
            : RatingModel.fromJson(json["rating"]),
        votes:
            json["votes"] == null ? null : RatingModel.fromJson(json["votes"]),
        backdrop: json["backdrop"] == null
            ? null
            : BackdropModel.fromJson(json["backdrop"]),
        movieLength: json["movieLength"],
        images: json["images"] == null
            ? null
            : ImagesModel.fromJson(json["images"]),
        productionCompanies: json["productionCompanies"] == null
            ? null
            : List<ProductionCompanyModel>.from(json["productionCompanies"]
                .map((x) => ProductionCompanyModel.fromJson(x))),
        spokenLanguages: json["spokenLanguages"] == null
            ? null
            : List<SpokenLanguageModel>.from(json["spokenLanguages"]
                .map((x) => SpokenLanguageModel.fromJson(x))),
        id: json["id"],
        type: json["type"] ?? "",
        name: json["name"] ?? "",
        description: json["description"] ?? "",
        distributors: json["distributors"] == null
            ? null
            : DistributorsModel.fromJson(json["distributors"]),
        slogan: json["slogan"] ?? "",
        year: json["year"],
        poster: json["poster"] == null
            ? null
            : BackdropModel.fromJson(json["poster"]),
        facts: json["facts"] ?? "",
        genres: json["genres"] == null
            ? null
            : List<CountryModel>.from(
                json["genres"].map((x) => CountryModel.fromJson(x))),
        countries: json["countries"] == null
            ? null
            : List<CountryModel>.from(
                json["countries"].map((x) => CountryModel.fromJson(x))),
        seasonsInfo: json["seasonsInfo"] ?? "",
        persons: json["persons"] == null
            ? null
            : List<PersonModel>.from(
                json["persons"].map((x) => PersonModel.fromJson(x))),
        lists: json['lists'] == null
            ? null
            : List<dynamic>.from(json["lists"].map((x) => x)),
        typeNumber: json["typeNumber"],
        alternativeName: json["alternativeName"] ?? "",
        enName: json["enName"] ?? "",
        names: json["names"] == null
            ? null
            : List<NameModel>.from(
                json["names"].map((x) => NameModel.fromJson(x))),
        ageRating: json["ageRating"],
        ratingMpaa: json["ratingMpaa"] ?? "",
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        shortDescription: json["shortDescription"] ?? "",
        technology: json["technology"] == null
            ? null
            : TechnologyModel.fromJson(json["technology"]),
        ticketsOnSale: json["ticketsOnSale"],
        sequelsAndPrequels: json["sequelsAndPrequels"] == null
            ? null
            : List<SequelsAndPrequelModel>.from(json["sequelsAndPrequels"]
                .map((x) => SequelsAndPrequelModel.fromJson(x))),
        similarMovies: json["similarMovies"] == null
            ? null
            : List<SequelsAndPrequelModel>.from(json["similarMovies"]
                .map((x) => SequelsAndPrequelModel.fromJson(x))),
        top10: json["top10"],
        top250: json["top250"],
        deletedAt: json["deletedAt"],
        isSeries: json["isSeries"],
        seriesLength: json["seriesLength"],
        totalSeriesLength: json["totalSeriesLength"],
        networks: json["networks"],
        videos: json["videos"] == null
            ? null
            : VideosModel.fromJson(json["videos"]),
      );

  Map<String, dynamic> toJson() => {
        // "fees": fees!.toJson(),
        "status": status,
        "externalId": externalId!.toJson(),
        "rating": rating!.toJson(),
        "votes": votes!.toJson(),
        "premiere": premiereModel!.toJson(),
        "backdrop": backdrop!.toJson(),
        "movieLength": movieLength,
        "images": images!.toJson(),
        "productionCompanies":
            List<dynamic>.from(productionCompanies!.map((x) => x.toJson())),
        "spokenLanguages":
            List<dynamic>.from(spokenLanguages!.map((x) => x.toJson())),
        "id": id,
        "type": type,
        "name": name,
        "description": description,
        "distributors": distributors!.toJson(),
        "slogan": slogan,
        "year": year,
        "poster": poster!.toJson(),
        "facts": facts,
        "genres": List<dynamic>.from(genres!.map((x) => x.toJson())),
        "countries": List<dynamic>.from(countries!.map((x) => x.toJson())),
        "seasonsInfo": seasonsInfo,
        "persons": List<dynamic>.from(persons!.map((x) => x.toJson())),
        "lists": List<dynamic>.from(lists!.map((x) => x)),
        "typeNumber": typeNumber,
        "alternativeName": alternativeName,
        "enName": enName,
        "names": List<dynamic>.from(names!.map((x) => x.toJson())),
        "ageRating": ageRating,
        "ratingMpaa": ratingMpaa,
        "updatedAt": updatedAt!.toIso8601String(),
        "shortDescription": shortDescription,
        "technology": technology!.toJson(),
        "ticketsOnSale": ticketsOnSale,
        "sequelsAndPrequels":
            List<dynamic>.from(sequelsAndPrequels!.map((x) => x.toJson())),
        "similarMovies":
            List<dynamic>.from(similarMovies!.map((x) => x.toJson())),
        "top10": top10,
        "top250": top250,
        "deletedAt": deletedAt,
        "isSeries": isSeries,
        "seriesLength": seriesLength,
        "totalSeriesLength": totalSeriesLength,
        "networks": networks,
        "videos": videos!.toJson(),
      };

  factory FilmDetailModel.fromEntity(FilmDetailEntity filmDetailEntity) => FilmDetailModel(
      fees: FeesModel.fromEntity(filmDetailEntity.fees!),
      documentId: filmDetailEntity.documentId,
      status: filmDetailEntity.status,
      premiereModel: PremiereModel.fromEntity(filmDetailEntity.premiere!),
      externalId: ExternalIdModel.fromEntity(filmDetailEntity.externalId!),
      rating: RatingModel.fromEntity(filmDetailEntity.rating!),
      votes: RatingModel.fromEntity(filmDetailEntity.votes!),
      backdrop: BackdropModel.fromEntity(filmDetailEntity.backdrop!),
      movieLength: filmDetailEntity.movieLength,
      images: ImagesModel.fromEntity(
          filmDetailEntity.images ?? ImagesEntity(framesCount: 1)),
      productionCompanies: List<ProductionCompanyModel>.from(filmDetailEntity
          .productionCompanies
          .map((e) => ProductionCompanyModel.fromEntity(e))),
      spokenLanguages: List<SpokenLanguageModel>.from(filmDetailEntity
          .spokenLanguages!
          .map((e) => SpokenLanguageModel.fromEntity(e))),
      id: filmDetailEntity.id,
      type: filmDetailEntity.type,
      name: filmDetailEntity.name,
      description: filmDetailEntity.description,
      distributors: DistributorsModel.fromEntity(filmDetailEntity.distributors ??
          DistributorsEntity(distributor: "", distributorRelease: "")),
      slogan: filmDetailEntity.slogan,
      year: filmDetailEntity.year,
      poster: BackdropModel.fromEntity(filmDetailEntity.poster!),
      facts: filmDetailEntity.facts,
      genres: List<CountryModel>.from(
          filmDetailEntity.genres!.map((e) => CountryModel.fromEntity(e))),
      countries: List<CountryModel>.from(filmDetailEntity.countries!.map((e) => CountryModel.fromEntity(e))),
      seasonsInfo: filmDetailEntity.seasonsInfo,
      persons: List<PersonModel>.from(filmDetailEntity.persons!.map((e) => PersonModel.fromEntity(e))),
      lists: List<dynamic>.from(filmDetailEntity.lists!.map((e) => e)),
      typeNumber: filmDetailEntity.typeNumber,
      alternativeName: filmDetailEntity.alternativeName,
      enName: filmDetailEntity.enName,
      names: List<NameModel>.from(filmDetailEntity.names!.map((e) => NameModel.fromEntity(e))),
      ageRating: filmDetailEntity.ageRating,
      ratingMpaa: filmDetailEntity.ratingMpaa,
      updatedAt: filmDetailEntity.updatedAt,
      shortDescription: filmDetailEntity.shortDescription,
      technology: TechnologyModel.fromEntity(filmDetailEntity.technology!),
      ticketsOnSale: filmDetailEntity.ticketsOnSale,
      sequelsAndPrequels: List<SequelsAndPrequelModel>.from(filmDetailEntity.sequelsAndPrequels!.map((e) => SequelsAndPrequelModel.fromEntity(e))),
      similarMovies: List<SequelsAndPrequelModel>.from(filmDetailEntity.similarMovies!.map((e) => SequelsAndPrequelModel.fromEntity(e))),
      top10: filmDetailEntity.top10,
      top250: filmDetailEntity.top250,
      deletedAt: filmDetailEntity.deletedAt,
      isSeries: filmDetailEntity.isSeries,
      seriesLength: filmDetailEntity.seriesLength,
      totalSeriesLength: filmDetailEntity.totalSeriesLength,
      networks: filmDetailEntity.networks,
      videos: VideosModel.fromEntity(filmDetailEntity.videos!));

  FilmDetailEntity toEntity() => FilmDetailEntity(
      fees: fees?.toEntity(),
      status: status,
      premiere: premiereModel?.toEntity(),
      documentId: documentId,
      externalId: externalId?.toEntity(),
      rating: rating?.toEntity(),
      votes: votes?.toEntity(),
      backdrop: backdrop?.toEntity(),
      movieLength: movieLength,
      images: images?.toEntity(),
      productionCompanies:
          (productionCompanies?.map((e) => e.toEntity()) ?? []).toList(),
      spokenLanguages:
          (spokenLanguages?.map((e) => e.toEntity()) ?? []).toList(),
      id: id,
      type: type,
      name: name,
      description: description,
      distributors: distributors?.toEntity(),
      slogan: slogan,
      year: year,
      poster: poster?.toEntity(),
      facts: facts,
      genres: (genres?.map((e) => e.toEntity()) ?? []).toList(),
      countries: (countries?.map((e) => e.toEntity()) ?? []).toList(),
      seasonsInfo: seasonsInfo,
      persons: (persons?.map((e) => e.toEntity()) ?? []).toList(),
      lists: lists,
      typeNumber: typeNumber,
      alternativeName: alternativeName,
      enName: enName,
      names: (names?.map((e) => e.toEntity()) ?? []).toList(),
      ageRating: ageRating,
      ratingMpaa: ratingMpaa,
      updatedAt: updatedAt,
      shortDescription: shortDescription,
      technology: technology?.toEntity(),
      ticketsOnSale: ticketsOnSale,
      sequelsAndPrequels:
          (sequelsAndPrequels?.map((e) => e.toEntity()) ?? []).toList(),
      similarMovies: (similarMovies?.map((e) => e.toEntity()) ?? []).toList(),
      top10: top10,
      top250: top250,
      deletedAt: deletedAt,
      isSeries: isSeries,
      seriesLength: seriesLength,
      totalSeriesLength: totalSeriesLength,
      networks: networks,
      videos: videos?.toEntity());
}

class BudgetModel {
  int? value;
  String? currency;

  BudgetModel({
    required this.value,
    required this.currency,
  });

  factory BudgetModel.fromJson(Map<String, dynamic> json) => BudgetModel(
        value: json["value"] ?? 0,
        currency: json["currency"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "value": value,
        "currency": currency,
      };

  factory BudgetModel.fromEntity(BudgetEntity budgetEntity) =>
      BudgetModel(value: budgetEntity.value, currency: budgetEntity.currency);

  BudgetEntity toEntity() =>
      BudgetEntity(value: value ?? 0, currency: currency ?? "");
}

class DistributorsModel {
  dynamic distributor;
  String? distributorRelease;

  DistributorsModel({
    required this.distributor,
    required this.distributorRelease,
  });

  factory DistributorsModel.fromJson(Map<String, dynamic> json) =>
      DistributorsModel(
        distributor: json["distributor"],
        distributorRelease: json["distributorRelease"],
      );

  Map<String, dynamic> toJson() => {
        "distributor": distributor,
        "distributorRelease": distributorRelease,
      };

  factory DistributorsModel.fromEntity(DistributorsEntity distributorsEntity) =>
      DistributorsModel(
          distributor: distributorsEntity.distributor,
          distributorRelease: distributorsEntity.distributorRelease);

  DistributorsEntity toEntity() => DistributorsEntity(
      distributor: distributor, distributorRelease: distributorRelease ?? "");
}

class FeesModel {
  BudgetModel? world;

  FeesModel({
    required this.world,
  });

  factory FeesModel.fromJson(Map<String, dynamic> json) => FeesModel(
        world:
            json['world'] == null ? null : BudgetModel.fromJson(json["world"]),
      );

  Map<String, dynamic> toJson() => {
        "world": world?.toJson(),
      };

  factory FeesModel.fromEntity(FeesEntity feesEntity) => FeesModel(
        world: feesEntity.world != null
            ? BudgetModel.fromEntity(feesEntity.world!)
            : null,
      );

  FeesEntity toEntity() => FeesEntity(
        world: world?.toEntity(),
      );
}

class ImagesModel {
  int framesCount;

  ImagesModel({
    required this.framesCount,
  });

  factory ImagesModel.fromJson(Map<String, dynamic> json) => ImagesModel(
        framesCount: json["framesCount"],
      );

  Map<String, dynamic> toJson() => {
        "framesCount": framesCount,
      };

  factory ImagesModel.fromEntity(ImagesEntity imagesEntity) =>
      ImagesModel(framesCount: imagesEntity.framesCount!);

  ImagesEntity toEntity() => ImagesEntity(framesCount: framesCount);
}

class PersonModel {
  int id;
  String photo;
  String? name;
  String? enName;
  String? description;
  String profession;
  String enProfession;

  PersonModel({
    required this.id,
    required this.photo,
    required this.name,
    required this.enName,
    required this.description,
    required this.profession,
    required this.enProfession,
  });

  factory PersonModel.fromJson(Map<String, dynamic> json) => PersonModel(
        id: json["id"],
        photo: json["photo"],
        name: json["name"],
        enName: json["enName"],
        description: json["description"],
        profession: json["profession"],
        enProfession: json["enProfession"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "photo": photo,
        "name": name,
        "enName": enName,
        "description": description,
        "profession": profession,
        "enProfession": enProfession,
      };

  factory PersonModel.fromEntity(PersonEntity personEntity) => PersonModel(
      id: personEntity.id,
      photo: personEntity.photo,
      name: personEntity.name,
      enName: personEntity.enName,
      description: personEntity.description,
      profession: personEntity.profession,
      enProfession: personEntity.enProfession);

  PersonEntity toEntity() => PersonEntity(
      id: id,
      photo: photo,
      name: name ?? "",
      enName: enName ?? "",
      description: description,
      profession: profession,
      enProfession: enProfession);
}

class ProductionCompanyModel {
  String name;
  String? url;
  String? previewUrl;

  ProductionCompanyModel({
    required this.name,
    required this.url,
    required this.previewUrl,
  });

  factory ProductionCompanyModel.fromJson(Map<String, dynamic> json) =>
      ProductionCompanyModel(
        name: json["name"],
        url: json["url"],
        previewUrl: json["previewUrl"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
        "previewUrl": previewUrl,
      };

  factory ProductionCompanyModel.fromEntity(
          ProductionCompanyEntity productionCompanyEntity) =>
      ProductionCompanyModel(
          name: productionCompanyEntity.name,
          url: productionCompanyEntity.url,
          previewUrl: productionCompanyEntity.previewUrl);

  ProductionCompanyEntity toEntity() =>
      ProductionCompanyEntity(name: name, url: url, previewUrl: previewUrl);
}

class SequelsAndPrequelModel {
  int? id;
  String? name;
  String? alternativeName;
  dynamic enName;
  String? type;
  BackdropModel? poster;
  RatingModel? rating;
  int? year;

  SequelsAndPrequelModel({
    required this.id,
    required this.name,
    required this.alternativeName,
    required this.enName,
    required this.type,
    required this.poster,
    this.rating,
    this.year,
  });

  factory SequelsAndPrequelModel.fromJson(Map<String, dynamic> json) =>
      SequelsAndPrequelModel(
        id: json["id"],
        name: json["name"],
        alternativeName: json["alternativeName"],
        enName: json["enName"],
        type: json["type"],
        poster: BackdropModel.fromJson(json["poster"]),
        rating: json["rating"] == null
            ? null
            : RatingModel.fromJson(json["rating"]),
        year: json["year"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "alternativeName": alternativeName,
        "enName": enName,
        "type": type,
        "poster": poster!.toJson(),
        "rating": rating?.toJson(),
        "year": year,
      };

  factory SequelsAndPrequelModel.fromEntity(
          SequelsAndPrequelEntity sequelsAndPrequelEntity) =>
      SequelsAndPrequelModel(
          id: sequelsAndPrequelEntity.id,
          name: sequelsAndPrequelEntity.name,
          alternativeName: sequelsAndPrequelEntity.alternativeName,
          enName: sequelsAndPrequelEntity.enName,
          type: sequelsAndPrequelEntity.type,
          poster: BackdropModel.fromEntity(sequelsAndPrequelEntity.poster!));

  SequelsAndPrequelEntity toEntity() => SequelsAndPrequelEntity(
      id: id!,
      name: name ?? "",
      alternativeName: alternativeName ?? "",
      enName: enName,
      type: type ?? "",
      poster: poster!.toEntity());
}

class SpokenLanguageModel {
  String? name;
  String? nameEn;

  SpokenLanguageModel({
    required this.name,
    required this.nameEn,
  });

  factory SpokenLanguageModel.fromJson(Map<String, dynamic> json) =>
      SpokenLanguageModel(
        name: json["name"],
        nameEn: json["nameEn"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "nameEn": nameEn,
      };

  factory SpokenLanguageModel.fromEntity(
          SpokenLanguageEntity spokenLanguageEntity) =>
      SpokenLanguageModel(
          name: spokenLanguageEntity.name, nameEn: spokenLanguageEntity.nameEn);

  SpokenLanguageEntity toEntity() =>
      SpokenLanguageEntity(name: name!, nameEn: nameEn!);
}

class TechnologyModel {
  bool? hasImax;
  bool? has3D;

  TechnologyModel({
    required this.hasImax,
    required this.has3D,
  });

  factory TechnologyModel.fromJson(Map<String, dynamic> json) =>
      TechnologyModel(
        hasImax: json["hasImax"],
        has3D: json["has3D"],
      );

  Map<String, dynamic> toJson() => {
        "hasImax": hasImax,
        "has3D": has3D,
      };

  factory TechnologyModel.fromEntity(TechnologyEntity technologyEntity) =>
      TechnologyModel(
          hasImax: technologyEntity.hasImax, has3D: technologyEntity.has3D);

  TechnologyEntity toEntity() =>
      TechnologyEntity(hasImax: hasImax!, has3D: has3D!);
}

class VideosModel {
  List<TrailerModel> trailers;

  VideosModel({
    required this.trailers,
  });

  factory VideosModel.fromJson(Map<String, dynamic> json) => VideosModel(
        trailers: List<TrailerModel>.from(
            json["trailers"].map((x) => TrailerModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "trailers": List<dynamic>.from(trailers.map((x) => x.toJson())),
      };

  factory VideosModel.fromEntity(VideosEntity videosEntity) => VideosModel(
        trailers: List<TrailerModel>.from(
            videosEntity.trailers!.map((e) => TrailerModel.fromEntity(e))),
      );

  VideosEntity toEntity() => VideosEntity(
      trailers: List<TrailerEntity>.from(trailers.map((e) => e.toEntity())));
}

class TrailerModel {
  String? url;
  String? name;
  String? site;
  String? type;

  TrailerModel({
    required this.url,
    required this.name,
    required this.site,
    required this.type,
  });

  factory TrailerModel.fromJson(Map<String, dynamic> json) => TrailerModel(
        url: json["url"],
        name: json["name"],
        site: json["site"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "name": name,
        "site": site,
        "type": type,
      };

  factory TrailerModel.fromEntity(TrailerEntity trailerEntity) => TrailerModel(
        url: trailerEntity.url,
        name: trailerEntity.name,
        site: trailerEntity.site,
        type: trailerEntity.type,
      );

  TrailerEntity toEntity() =>
      TrailerEntity(url: url, name: name, site: site, type: type);
}

class PremiereModel {
  String world;

  PremiereModel({
    required this.world,
  });

  factory PremiereModel.fromJson(Map<String, dynamic> json) => PremiereModel(
        world: json["world"],
      );

  Map<String, dynamic> toJson() => {
        "world": world,
      };

  factory PremiereModel.fromEntity(PremiereEntity premiereEntity) =>
      PremiereModel(
        world: premiereEntity.world!,
      );

  PremiereEntity toEntity() => PremiereEntity(
        world: world,
      );
}
