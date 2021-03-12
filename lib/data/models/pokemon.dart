// Generated using quicktype: app.quicktype.io

class Pokemon {
    Pokemon({
        this.abilities,
        this.baseExperience,
        this.forms,
        this.gameIndices,
        this.height,
        this.heldItems,
        this.id,
        this.isDefault,
        this.locationAreaEncounters,
        this.moves,
        this.name,
        this.order,
        this.pastTypes,
        this.species,
        this.sprites,
        this.stats,
        this.types,
        this.url,
        this.weight,
    });

    List<Ability>? abilities;
    int? baseExperience;
    List<Hypertext>? forms;
    List<GameIndex>? gameIndices;
    int? height;
    List<dynamic>? heldItems;
    int? id;
    bool? isDefault;
    String? locationAreaEncounters;
    List<Move>? moves;
    String? name;
    int? order;
    List<dynamic>? pastTypes;
    Hypertext? species;
    Sprites? sprites;
    List<Stat>? stats;
    List<Type>? types;
    String? url;
    int? weight;

    factory Pokemon.fromJson(Map<String, dynamic> json) => Pokemon(
        abilities: json["abilities"] == null ? null : List<Ability>.from(json["abilities"].map((x) => Ability.fromJson(x))),
        baseExperience: json["base_experience"] == null ? null : json["base_experience"],
        forms: json["forms"] == null ? null : List<Hypertext>.from(json["forms"].map((x) => Hypertext.fromJson(x))),
        gameIndices: json["game_indices"] == null ? null : List<GameIndex>.from(json["game_indices"].map((x) => GameIndex.fromJson(x))),
        height: json["height"] == null ? null : json["height"],
        heldItems: json["held_items"] == null ? null : List<dynamic>.from(json["held_items"].map((x) => x)),
        id: json["id"] == null ? null : json["id"],
        isDefault: json["is_default"] == null ? null : json["is_default"],
        locationAreaEncounters: json["location_area_encounters"] == null ? null : json["location_area_encounters"],
        moves: json["moves"] == null ? null : List<Move>.from(json["moves"].map((x) => Move.fromJson(x))),
        name: json["name"] == null ? null : json["name"],
        order: json["order"] == null ? null : json["order"],
        pastTypes: json["past_types"] == null ? null : List<dynamic>.from(json["past_types"].map((x) => x)),
        species: json["species"] == null ? null : Hypertext.fromJson(json["species"]),
        sprites: json["sprites"] == null ? null : Sprites.fromJson(json["sprites"]),
        stats: json["stats"] == null ? null : List<Stat>.from(json["stats"].map((x) => Stat.fromJson(x))),
        types: json["types"] == null ? null : List<Type>.from(json["types"].map((x) => Type.fromJson(x))),
        url: json["url"] == null ? null : json["url"],
        weight: json["weight"] == null ? null : json["weight"],
    );

    Map<String, dynamic> toJson() => {
        "abilities": abilities == null ? null : List<dynamic>.from(abilities!.map((x) => x.toJson())),
        "base_experience": baseExperience == null ? null : baseExperience,
        "forms": forms == null ? null : List<dynamic>.from(forms!.map((x) => x.toJson())),
        "game_indices": gameIndices == null ? null : List<dynamic>.from(gameIndices!.map((x) => x.toJson())),
        "height": height == null ? null : height,
        "held_items": heldItems == null ? null : List<dynamic>.from(heldItems!.map((x) => x)),
        "id": id == null ? null : id,
        "is_default": isDefault == null ? null : isDefault,
        "location_area_encounters": locationAreaEncounters == null ? null : locationAreaEncounters,
        "moves": moves == null ? null : List<dynamic>.from(moves!.map((x) => x.toJson())),
        "name": name == null ? null : name,
        "order": order == null ? null : order,
        "past_types": pastTypes == null ? null : List<dynamic>.from(pastTypes!.map((x) => x)),
        "species": species == null ? null : species!.toJson(),
        "sprites": sprites == null ? null : sprites!.toJson(),
        "stats": stats == null ? null : List<dynamic>.from(stats!.map((x) => x.toJson())),
        "types": types == null ? null : List<dynamic>.from(types!.map((x) => x.toJson())),
        "weight": weight == null ? null : weight,
    };
}

class Ability {
    Ability({
        this.ability,
        this.isHidden,
        this.slot,
    });

    Hypertext? ability;
    bool? isHidden;
    int? slot;

    factory Ability.fromJson(Map<String, dynamic> json) => Ability(
        ability: Hypertext.fromJson(json["ability"]),
        isHidden: json["is_hidden"],
        slot: json["slot"],
    );

    Map<String, dynamic> toJson() => {
        "ability": ability ?? ability!.toJson(),
        "is_hidden": isHidden,
        "slot": slot,
    };
}

class Hypertext {
    Hypertext({
        this.name,
        this.url,
    });

    String? name;
    String? url;

    factory Hypertext.fromJson(Map<String, dynamic> json) => Hypertext(
        name: json["name"],
        url: json["url"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
    };
}

class GameIndex {
    GameIndex({
        this.gameIndex,
        this.version,
    });

    int? gameIndex;
    Hypertext? version;

    factory GameIndex.fromJson(Map<String, dynamic> json) => GameIndex(
        gameIndex: json["game_index"],
        version: Hypertext.fromJson(json["version"]),
    );

    Map<String, dynamic> toJson() => {
        "game_index": gameIndex,
        "version": version ?? version!.toJson(),
    };
}

class Move {
    Move({
        this.move,
        this.versionGroupDetails,
    });

    Hypertext? move;
    List<VersionGroupDetail>? versionGroupDetails;

    factory Move.fromJson(Map<String, dynamic> json) => Move(
        move: Hypertext.fromJson(json["move"]),
        versionGroupDetails: List<VersionGroupDetail>.from(json["version_group_details"].map((x) => VersionGroupDetail.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "move": move ?? move!.toJson(),
        "version_group_details": versionGroupDetails ?? List<dynamic>.from(versionGroupDetails!.map((x) => x.toJson())),
    };
}

class VersionGroupDetail {
    VersionGroupDetail({
        this.levelLearnedAt,
        this.moveLearnMethod,
        this.versionGroup,
    });

    int? levelLearnedAt;
    Hypertext? moveLearnMethod;
    Hypertext? versionGroup;

    factory VersionGroupDetail.fromJson(Map<String, dynamic> json) => VersionGroupDetail(
        levelLearnedAt: json["level_learned_at"],
        moveLearnMethod: Hypertext.fromJson(json["move_learn_method"]),
        versionGroup: Hypertext.fromJson(json["version_group"]),
    );

    Map<String, dynamic> toJson() => {
        "level_learned_at": levelLearnedAt,
        "move_learn_method": moveLearnMethod ?? moveLearnMethod!.toJson(),
        "version_group": versionGroup ?? versionGroup!.toJson(),
    };
}

class GenerationV {
    GenerationV({
        this.blackWhite,
    });

    Sprites? blackWhite;

    factory GenerationV.fromJson(Map<String, dynamic> json) => GenerationV(
        blackWhite: Sprites.fromJson(json["black-white"]),
    );

    Map<String, dynamic> toJson() => {
        "black-white": blackWhite ?? blackWhite!.toJson(),
    };
}

class GenerationIv {
    GenerationIv({
        this.diamondPearl,
        this.heartgoldSoulsilver,
        this.platinum,
    });

    Sprites? diamondPearl;
    Sprites? heartgoldSoulsilver;
    Sprites? platinum;

    factory GenerationIv.fromJson(Map<String, dynamic> json) => GenerationIv(
        diamondPearl: Sprites.fromJson(json["diamond-pearl"]),
        heartgoldSoulsilver: Sprites.fromJson(json["heartgold-soulsilver"]),
        platinum: Sprites.fromJson(json["platinum"]),
    );

    Map<String, dynamic> toJson() => {
        "diamond-pearl": diamondPearl ?? diamondPearl!.toJson(),
        "heartgold-soulsilver": heartgoldSoulsilver ?? heartgoldSoulsilver!.toJson(),
        "platinum": platinum ?? platinum!.toJson(),
    };
}

class Versions {
    Versions({
        this.generationI,
        this.generationIi,
        this.generationIii,
        this.generationIv,
        this.generationV,
        this.generationVi,
        this.generationVii,
        this.generationViii,
    });

    GenerationI? generationI;
    GenerationIi? generationIi;
    GenerationIii? generationIii;
    GenerationIv? generationIv;
    GenerationV? generationV;
    Map<String, GenerationVi>? generationVi;
    GenerationVii? generationVii;
    GenerationViii? generationViii;

    factory Versions.fromJson(Map<String, dynamic> json) => Versions(
        generationI: GenerationI.fromJson(json["generation-i"]),
        generationIi: GenerationIi.fromJson(json["generation-ii"]),
        generationIii: GenerationIii.fromJson(json["generation-iii"]),
        generationIv: GenerationIv.fromJson(json["generation-iv"]),
        generationV: GenerationV.fromJson(json["generation-v"]),
        generationVi: Map.from(json["generation-vi"]).map((k, v) => MapEntry<String, GenerationVi>(k, GenerationVi.fromJson(v))),
        generationVii: GenerationVii.fromJson(json["generation-vii"]),
        generationViii: GenerationViii.fromJson(json["generation-viii"]),
    );

    Map<String, dynamic> toJson() => {
        "generation-i": generationI ?? generationI!.toJson(),
        "generation-ii": generationIi ?? generationIi!.toJson(),
        "generation-iii": generationIii ?? generationIii!.toJson(),
        "generation-iv": generationIv ?? generationIv!.toJson(),
        "generation-v": generationV ?? generationV!.toJson(),
        "generation-vi": generationVi ?? Map.from(generationVi!).map((k, v) => MapEntry<String, GenerationVi>(k, v.toJson())),
        "generation-vii": generationVii ?? generationVii!.toJson(),
        "generation-viii": generationViii ?? generationViii!.toJson(),
    };
}

class Sprites {
    Sprites({
        this.backDefault,
        this.backFemale,
        this.backShiny,
        this.backShinyFemale,
        this.frontDefault,
        this.frontFemale,
        this.frontShiny,
        this.frontShinyFemale,
        this.other,
        this.versions,
        this.animated,
    });

    String? backDefault;
    dynamic backFemale;
    String? backShiny;
    dynamic backShinyFemale;
    String? frontDefault;
    dynamic frontFemale;
    String? frontShiny;
    dynamic frontShinyFemale;
    Other? other;
    Versions? versions;
    Sprites? animated;

    factory Sprites.fromJson(Map<String, dynamic> json) => Sprites(
        backDefault: json["back_default"],
        backFemale: json["back_female"],
        backShiny: json["back_shiny"],
        backShinyFemale: json["back_shiny_female"],
        frontDefault: json["front_default"],
        frontFemale: json["front_female"],
        frontShiny: json["front_shiny"],
        frontShinyFemale: json["front_shiny_female"],
        other: json["other"] == null ? null : Other.fromJson(json["other"]),
        versions: json["versions"] == null ? null : Versions.fromJson(json["versions"]),
        animated: json["animated"] == null ? null : Sprites.fromJson(json["animated"]),
    );

    Map<String, dynamic> toJson() => {
        "back_default": backDefault,
        "back_female": backFemale,
        "back_shiny": backShiny,
        "back_shiny_female": backShinyFemale,
        "front_default": frontDefault,
        "front_female": frontFemale,
        "front_shiny": frontShiny,
        "front_shiny_female": frontShinyFemale,
        "other": other ?? other!.toJson(),
        "versions": versions ?? versions!.toJson(),
        "animated": animated ?? animated!.toJson(),
    };
}

class GenerationI {
    GenerationI({
        this.redBlue,
        this.yellow,
    });

    GenISprites? redBlue;
    GenISprites? yellow;

    factory GenerationI.fromJson(Map<String, dynamic> json) => GenerationI(
        redBlue: GenISprites.fromJson(json["red-blue"]),
        yellow: GenISprites.fromJson(json["yellow"]),
    );

    Map<String, dynamic> toJson() => {
        "red-blue": redBlue ?? redBlue!.toJson(),
        "yellow": yellow ?? yellow!.toJson(),
    };
}

class GenISprites {
    GenISprites({
        this.backDefault,
        this.backGray,
        this.frontDefault,
        this.frontGray,
    });

    String? backDefault;
    String? backGray;
    String? frontDefault;
    String? frontGray;

    factory GenISprites.fromJson(Map<String, dynamic> json) => GenISprites(
        backDefault: json["back_default"],
        backGray: json["back_gray"],
        frontDefault: json["front_default"],
        frontGray: json["front_gray"],
    );

    Map<String, dynamic> toJson() => {
        "back_default": backDefault,
        "back_gray": backGray,
        "front_default": frontDefault,
        "front_gray": frontGray,
    };
}

class GenerationIi {
    GenerationIi({
        this.crystal,
        this.gold,
        this.silver,
    });

    GenIISprites? crystal;
    GenIISprites? gold;
    GenIISprites? silver;

    factory GenerationIi.fromJson(Map<String, dynamic> json) => GenerationIi(
        crystal: GenIISprites.fromJson(json["crystal"]),
        gold: GenIISprites.fromJson(json["gold"]),
        silver: GenIISprites.fromJson(json["silver"]),
    );

    Map<String, dynamic> toJson() => {
        "crystal": crystal ?? crystal!.toJson(),
        "gold": gold ?? gold!.toJson(),
        "silver": silver ?? silver!.toJson(),
    };
}

class GenIISprites {
    GenIISprites({
        this.backDefault,
        this.backShiny,
        this.frontDefault,
        this.frontShiny,
    });

    String? backDefault;
    String? backShiny;
    String? frontDefault;
    String? frontShiny;

    factory GenIISprites.fromJson(Map<String, dynamic> json) => GenIISprites(
        backDefault: json["back_default"],
        backShiny: json["back_shiny"],
        frontDefault: json["front_default"],
        frontShiny: json["front_shiny"],
    );

    Map<String, dynamic> toJson() => {
        "back_default": backDefault,
        "back_shiny": backShiny,
        "front_default": frontDefault,
        "front_shiny": frontShiny,
    };
}

class GenerationIii {
    GenerationIii({
        this.emerald,
        this.fireredLeafgreen,
        this.rubySapphire,
    });

    Emerald? emerald;
    GenIISprites? fireredLeafgreen;
    GenIISprites? rubySapphire;

    factory GenerationIii.fromJson(Map<String, dynamic> json) => GenerationIii(
        emerald: Emerald.fromJson(json["emerald"]),
        fireredLeafgreen: GenIISprites.fromJson(json["firered-leafgreen"]),
        rubySapphire: GenIISprites.fromJson(json["ruby-sapphire"]),
    );

    Map<String, dynamic> toJson() => {
        "emerald": emerald ?? emerald!.toJson(),
        "firered-leafgreen": fireredLeafgreen ?? fireredLeafgreen!.toJson(),
        "ruby-sapphire": rubySapphire ?? rubySapphire!.toJson(),
    };
}

class Emerald {
    Emerald({
        this.frontDefault,
        this.frontShiny,
    });

    String? frontDefault;
    String? frontShiny;

    factory Emerald.fromJson(Map<String, dynamic> json) => Emerald(
        frontDefault: json["front_default"],
        frontShiny: json["front_shiny"],
    );

    Map<String, dynamic> toJson() => {
        "front_default": frontDefault,
        "front_shiny": frontShiny,
    };
}

class GenerationVi {
    GenerationVi({
        this.frontDefault,
        this.frontFemale,
        this.frontShiny,
        this.frontShinyFemale,
    });

    String? frontDefault;
    dynamic frontFemale;
    String? frontShiny;
    dynamic frontShinyFemale;

    factory GenerationVi.fromJson(Map<String, dynamic> json) => GenerationVi(
        frontDefault: json["front_default"],
        frontFemale: json["front_female"],
        frontShiny: json["front_shiny"],
        frontShinyFemale: json["front_shiny_female"],
    );

    Map<String, dynamic> toJson() => {
        "front_default": frontDefault,
        "front_female": frontFemale,
        "front_shiny": frontShiny,
        "front_shiny_female": frontShinyFemale,
    };
}

class GenerationVii {
    GenerationVii({
        this.icons,
        this.ultraSunUltraMoon,
    });

    DreamWorld? icons;
    GenerationVi? ultraSunUltraMoon;

    factory GenerationVii.fromJson(Map<String, dynamic> json) => GenerationVii(
        icons: DreamWorld.fromJson(json["icons"]),
        ultraSunUltraMoon: GenerationVi.fromJson(json["ultra-sun-ultra-moon"]),
    );

    Map<String, dynamic> toJson() => {
        "icons": icons ?? icons!.toJson(),
        "ultra-sun-ultra-moon": ultraSunUltraMoon ?? ultraSunUltraMoon!.toJson(),
    };
}

class DreamWorld {
    DreamWorld({
        this.frontDefault,
        this.frontFemale,
    });

    String? frontDefault;
    dynamic frontFemale;

    factory DreamWorld.fromJson(Map<String, dynamic> json) => DreamWorld(
        frontDefault: json["front_default"],
        frontFemale: json["front_female"],
    );

    Map<String, dynamic> toJson() => {
        "front_default": frontDefault,
        "front_female": frontFemale,
    };
}

class GenerationViii {
    GenerationViii({
        this.icons,
    });

    DreamWorld? icons;

    factory GenerationViii.fromJson(Map<String, dynamic> json) => GenerationViii(
        icons: DreamWorld.fromJson(json["icons"]),
    );

    Map<String, dynamic> toJson() => {
        "icons": icons ?? icons!.toJson(),
    };
}

class Other {
    Other({
        this.dreamWorld,
        this.officialArtwork,
    });

    DreamWorld? dreamWorld;
    OfficialArtwork? officialArtwork;

    factory Other.fromJson(Map<String, dynamic> json) => Other(
        dreamWorld: DreamWorld.fromJson(json["dream_world"]),
        officialArtwork: OfficialArtwork.fromJson(json["official-artwork"]),
    );

    Map<String, dynamic> toJson() => {
        "dream_world": dreamWorld ?? dreamWorld!.toJson(),
        "official-artwork": officialArtwork ?? officialArtwork!.toJson(),
    };
}

class OfficialArtwork {
    OfficialArtwork({
        this.frontDefault,
    });

    String? frontDefault;

    factory OfficialArtwork.fromJson(Map<String, dynamic> json) => OfficialArtwork(
        frontDefault: json["front_default"],
    );

    Map<String, dynamic> toJson() => {
        "front_default": frontDefault,
    };
}

class Stat {
    Stat({
        this.baseStat,
        this.effort,
        this.stat,
    });

    int? baseStat;
    int? effort;
    Hypertext? stat;

    factory Stat.fromJson(Map<String, dynamic> json) => Stat(
        baseStat: json["base_stat"],
        effort: json["effort"],
        stat: Hypertext.fromJson(json["stat"]),
    );

    Map<String, dynamic> toJson() => {
        "base_stat": baseStat,
        "effort": effort,
        "stat": stat ?? stat!.toJson(),
    };
}

class Type {
    Type({
        this.slot,
        this.type,
    });

    int? slot;
    Hypertext? type;

    factory Type.fromJson(Map<String, dynamic> json) => Type(
        slot: json["slot"],
        type: Hypertext.fromJson(json["type"]),
    );

    Map<String, dynamic> toJson() => {
        "slot": slot,
        "type": type ?? type!.toJson(),
    };
}
