import 'package:test_appfox/domain/entity/searched_films_entity.dart';

class FilmDetailEntity {
  final String? documentId;
  FeesEntity? fees;
  dynamic status;
  ExternalIdEntity? externalId;
  RatingEntity? rating;
  RatingEntity? votes;
  BackdropEntity? backdrop;
  int? movieLength;
  ImagesEntity? images;
  List<ProductionCompanyEntity> productionCompanies;
  List<SpokenLanguageEntity>? spokenLanguages;
  int? id;
  String? type;
  String? name;
  String? description;
  DistributorsEntity? distributors;
  String? slogan;
  int? year;
  BackdropEntity? poster;
  dynamic facts;
  List<CountryEntity>? genres;
  List<CountryEntity>? countries;
  dynamic seasonsInfo;
  List<PersonEntity>? persons;
  List<dynamic>? lists;
  int? typeNumber;
  String? alternativeName;
  dynamic enName;
  List<NameEntity>? names;
  int? ageRating;
  String? ratingMpaa;
  DateTime? updatedAt;
  String? shortDescription;
  TechnologyEntity? technology;
  bool? ticketsOnSale;
  List<SequelsAndPrequelEntity>? sequelsAndPrequels;
  List<SequelsAndPrequelEntity>? similarMovies;
  dynamic top10;
  dynamic top250;
  dynamic deletedAt;
  PremiereEntity? premiere;
  bool? isSeries;
  dynamic seriesLength;
  dynamic totalSeriesLength;
  dynamic networks;
  VideosEntity? videos;

  FilmDetailEntity({
    required this.fees,
    this.documentId,
    required this.status,
    required this.externalId,
    required this.rating,
    required this.votes,
    required this.backdrop,
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
    required this.premiere,
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

  FilmDetailEntity copyWith({
    FeesEntity? fees,
    dynamic status,
    ExternalIdEntity? externalId,
    RatingEntity? rating,
    RatingEntity? votes,
    BackdropEntity? backdrop,
    int? movieLength,
    ImagesEntity? images,
    List<ProductionCompanyEntity>? productionCompanies,
    List<SpokenLanguageEntity>? spokenLanguages,
    int? id,
    String? type,
    String? name,
    String? description,
    DistributorsEntity? distributors,
    String? slogan,
    int? year,
    BudgetEntity? budget,
    BackdropEntity? poster,
    dynamic facts,
    List<CountryEntity>? genres,
    List<CountryEntity>? countries,
    dynamic seasonsInfo,
    List<PersonEntity>? persons,
    List<dynamic>? lists,
    int? typeNumber,
    String? alternativeName,
    dynamic enName,
    List<NameEntity>? names,
    int? ageRating,
    String? ratingMpaa,
    DateTime? updatedAt,
    String? shortDescription,
    TechnologyEntity? technology,
    bool? ticketsOnSale,
    List<SequelsAndPrequelEntity>? sequelsAndPrequels,
    List<SequelsAndPrequelEntity>? similarMovies,
    dynamic top10,
    dynamic top250,
    dynamic deletedAt,
    bool? isSeries,
    dynamic seriesLength,
    dynamic totalSeriesLength,
    dynamic networks,
    VideosEntity? videos,
  }) =>
      FilmDetailEntity(
        fees: fees ?? this.fees,
        status: status ?? this.status,
        externalId: externalId ?? this.externalId,
        rating: rating ?? this.rating,
        votes: votes ?? this.votes,
        backdrop: backdrop ?? this.backdrop,
        movieLength: movieLength ?? this.movieLength,
        images: images ?? this.images,
        premiere: premiere ?? this.premiere,
        productionCompanies: productionCompanies ?? this.productionCompanies,
        spokenLanguages: spokenLanguages ?? this.spokenLanguages,
        id: id ?? this.id,
        type: type ?? this.type,
        name: name ?? this.name,
        description: description ?? this.description,
        distributors: distributors ?? this.distributors,
        slogan: slogan ?? this.slogan,
        year: year ?? this.year,
        poster: poster ?? this.poster,
        facts: facts ?? this.facts,
        genres: genres ?? this.genres,
        countries: countries ?? this.countries,
        seasonsInfo: seasonsInfo ?? this.seasonsInfo,
        persons: persons ?? this.persons,
        lists: lists ?? this.lists,
        typeNumber: typeNumber ?? this.typeNumber,
        alternativeName: alternativeName ?? this.alternativeName,
        enName: enName ?? this.enName,
        names: names ?? this.names,
        ageRating: ageRating ?? this.ageRating,
        ratingMpaa: ratingMpaa ?? this.ratingMpaa,
        updatedAt: updatedAt ?? this.updatedAt,
        shortDescription: shortDescription ?? this.shortDescription,
        technology: technology ?? this.technology,
        ticketsOnSale: ticketsOnSale ?? this.ticketsOnSale,
        sequelsAndPrequels: sequelsAndPrequels ?? this.sequelsAndPrequels,
        similarMovies: similarMovies ?? this.similarMovies,
        top10: top10 ?? this.top10,
        top250: top250 ?? this.top250,
        deletedAt: deletedAt ?? this.deletedAt,
        isSeries: isSeries ?? this.isSeries,
        seriesLength: seriesLength ?? this.seriesLength,
        totalSeriesLength: totalSeriesLength ?? this.totalSeriesLength,
        networks: networks ?? this.networks,
        videos: videos ?? this.videos,
      );
}

class BudgetEntity {
  int value;
  String currency;

  BudgetEntity({
    required this.value,
    required this.currency,
  });

  BudgetEntity copyWith({
    int? value,
    String? currency,
  }) =>
      BudgetEntity(
        value: value ?? this.value,
        currency: currency ?? this.currency,
      );
}

class DistributorsEntity {
  dynamic distributor;
  String distributorRelease;

  DistributorsEntity({
    required this.distributor,
    required this.distributorRelease,
  });

  DistributorsEntity copyWith({
    dynamic distributor,
    String? distributorRelease,
  }) =>
      DistributorsEntity(
        distributor: distributor ?? this.distributor,
        distributorRelease: distributorRelease ?? this.distributorRelease,
      );
}

class FeesEntity {
  BudgetEntity? world;

  FeesEntity({
    required this.world,
  });

  FeesEntity copyWith({
    BudgetEntity? world,
  }) =>
      FeesEntity(
        world: world ?? this.world,
      );
}

class ImagesEntity {
  int? framesCount;

  ImagesEntity({
    required this.framesCount,
  });

  ImagesEntity copyWith({
    int? framesCount,
  }) =>
      ImagesEntity(
        framesCount: framesCount ?? this.framesCount,
      );
}

class PersonEntity {
  int id;
  String photo;
  String name;
  String enName;
  String? description;
  String profession;
  String enProfession;

  PersonEntity({
    required this.id,
    required this.photo,
    required this.name,
    required this.enName,
    required this.description,
    required this.profession,
    required this.enProfession,
  });

  PersonEntity copyWith({
    int? id,
    String? photo,
    String? name,
    String? enName,
    String? description,
    String? profession,
    String? enProfession,
  }) =>
      PersonEntity(
        id: id ?? this.id,
        photo: photo ?? this.photo,
        name: name ?? this.name,
        enName: enName ?? this.enName,
        description: description ?? this.description,
        profession: profession ?? this.profession,
        enProfession: enProfession ?? this.enProfession,
      );

  factory PersonEntity.fromJson(Map<String, dynamic> json) => PersonEntity(
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
}

class ProductionCompanyEntity {
  String name;
  String? url;
  String? previewUrl;

  ProductionCompanyEntity({
    required this.name,
    required this.url,
    required this.previewUrl,
  });

  ProductionCompanyEntity copyWith({
    String? name,
    String? url,
    String? previewUrl,
  }) =>
      ProductionCompanyEntity(
        name: name ?? this.name,
        url: url ?? this.url,
        previewUrl: previewUrl ?? this.previewUrl,
      );
}

class SequelsAndPrequelEntity {
  int id;
  String name;
  String alternativeName;
  dynamic enName;
  String type;
  BackdropEntity? poster;
  RatingEntity? rating;
  int? year;

  SequelsAndPrequelEntity({
    required this.id,
    required this.name,
    required this.alternativeName,
    required this.enName,
    required this.type,
    required this.poster,
    this.rating,
    this.year,
  });

  SequelsAndPrequelEntity copyWith({
    int? id,
    String? name,
    String? alternativeName,
    dynamic enName,
    String? type,
    BackdropEntity? poster,
    RatingEntity? rating,
    int? year,
  }) =>
      SequelsAndPrequelEntity(
        id: id ?? this.id,
        name: name ?? this.name,
        alternativeName: alternativeName ?? this.alternativeName,
        enName: enName ?? this.enName,
        type: type ?? this.type,
        poster: poster ?? this.poster,
        rating: rating ?? this.rating,
        year: year ?? this.year,
      );
}

class SpokenLanguageEntity {
  String name;
  String nameEn;

  SpokenLanguageEntity({
    required this.name,
    required this.nameEn,
  });

  SpokenLanguageEntity copyWith({
    String? name,
    String? nameEn,
  }) =>
      SpokenLanguageEntity(
        name: name ?? this.name,
        nameEn: nameEn ?? this.nameEn,
      );
}

class TechnologyEntity {
  bool hasImax;
  bool has3D;

  TechnologyEntity({
    required this.hasImax,
    required this.has3D,
  });

  TechnologyEntity copyWith({
    bool? hasImax,
    bool? has3D,
  }) =>
      TechnologyEntity(
        hasImax: hasImax ?? this.hasImax,
        has3D: has3D ?? this.has3D,
      );
}

class VideosEntity {
  List<TrailerEntity>? trailers;

  VideosEntity({
    required this.trailers,
  });

  VideosEntity copyWith({
    List<TrailerEntity>? trailers,
  }) =>
      VideosEntity(
        trailers: trailers ?? this.trailers,
      );
}

class TrailerEntity {
  String? url;
  String? name;
  String? site;
  String? type;

  TrailerEntity({
    required this.url,
    required this.name,
    required this.site,
    required this.type,
  });

  TrailerEntity copyWith({
    String? url,
    String? name,
    String? site,
    String? type,
  }) =>
      TrailerEntity(
        url: url ?? this.url,
        name: name ?? this.name,
        site: site ?? this.site,
        type: type ?? this.type,
      );
}

class PremiereEntity {
  String? world;

  PremiereEntity({
    required this.world,
  });

  PremiereEntity copyWith({
    String? world,
  }) =>
      PremiereEntity(
        world: world ?? this.world,
      );
}
