// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $BirthTable extends Birth with TableInfo<$BirthTable, BirthData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BirthTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _whoCutMeta = const VerificationMeta('whoCut');
  @override
  late final GeneratedColumnWithTypeConverter<WhoCutUmbilicalCord, int> whoCut =
      GeneratedColumn<int>('who_cut', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<WhoCutUmbilicalCord>($BirthTable.$converterwhoCut);
  static const VerificationMeta _collectStemCellsMeta =
      const VerificationMeta('collectStemCells');
  @override
  late final GeneratedColumn<bool> collectStemCells = GeneratedColumn<bool>(
      'collect_stem_cells', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("collect_stem_cells" IN (0, 1))'));
  static const VerificationMeta _skinBabyContactMeta =
      const VerificationMeta('skinBabyContact');
  @override
  late final GeneratedColumnWithTypeConverter<SkinBabyContact, int>
      skinBabyContact = GeneratedColumn<int>(
              'skin_baby_contact', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<SkinBabyContact>(
              $BirthTable.$converterskinBabyContact);
  static const VerificationMeta _breastfeedFirstHourMeta =
      const VerificationMeta('breastfeedFirstHour');
  @override
  late final GeneratedColumnWithTypeConverter<BreastfeedFirstHour, int>
      breastfeedFirstHour = GeneratedColumn<int>(
              'breastfeed_first_hour', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<BreastfeedFirstHour>(
              $BirthTable.$converterbreastfeedFirstHour);
  static const VerificationMeta _breastfeedRestrictionsMeta =
      const VerificationMeta('breastfeedRestrictions');
  @override
  late final GeneratedColumn<bool> breastfeedRestrictions =
      GeneratedColumn<bool>('breastfeed_restrictions', aliasedName, false,
          type: DriftSqlType.bool,
          requiredDuringInsert: true,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("breastfeed_restrictions" IN (0, 1))'));
  static const VerificationMeta _firstBathMeta =
      const VerificationMeta('firstBath');
  @override
  late final GeneratedColumnWithTypeConverter<FirstBath, int> firstBath =
      GeneratedColumn<int>('first_bath', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<FirstBath>($BirthTable.$converterfirstBath);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        whoCut,
        collectStemCells,
        skinBabyContact,
        breastfeedFirstHour,
        breastfeedRestrictions,
        firstBath
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'birth';
  @override
  VerificationContext validateIntegrity(Insertable<BirthData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    context.handle(_whoCutMeta, const VerificationResult.success());
    if (data.containsKey('collect_stem_cells')) {
      context.handle(
          _collectStemCellsMeta,
          collectStemCells.isAcceptableOrUnknown(
              data['collect_stem_cells']!, _collectStemCellsMeta));
    } else if (isInserting) {
      context.missing(_collectStemCellsMeta);
    }
    context.handle(_skinBabyContactMeta, const VerificationResult.success());
    context.handle(
        _breastfeedFirstHourMeta, const VerificationResult.success());
    if (data.containsKey('breastfeed_restrictions')) {
      context.handle(
          _breastfeedRestrictionsMeta,
          breastfeedRestrictions.isAcceptableOrUnknown(
              data['breastfeed_restrictions']!, _breastfeedRestrictionsMeta));
    } else if (isInserting) {
      context.missing(_breastfeedRestrictionsMeta);
    }
    context.handle(_firstBathMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  BirthData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BirthData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      whoCut: $BirthTable.$converterwhoCut.fromSql(attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}who_cut'])!),
      collectStemCells: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}collect_stem_cells'])!,
      skinBabyContact: $BirthTable.$converterskinBabyContact.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.int, data['${effectivePrefix}skin_baby_contact'])!),
      breastfeedFirstHour: $BirthTable.$converterbreastfeedFirstHour.fromSql(
          attachedDatabase.typeMapping.read(DriftSqlType.int,
              data['${effectivePrefix}breastfeed_first_hour'])!),
      breastfeedRestrictions: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}breastfeed_restrictions'])!,
      firstBath: $BirthTable.$converterfirstBath.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}first_bath'])!),
    );
  }

  @override
  $BirthTable createAlias(String alias) {
    return $BirthTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<WhoCutUmbilicalCord, int, int> $converterwhoCut =
      const EnumIndexConverter<WhoCutUmbilicalCord>(WhoCutUmbilicalCord.values);
  static JsonTypeConverter2<SkinBabyContact, int, int>
      $converterskinBabyContact =
      const EnumIndexConverter<SkinBabyContact>(SkinBabyContact.values);
  static JsonTypeConverter2<BreastfeedFirstHour, int, int>
      $converterbreastfeedFirstHour =
      const EnumIndexConverter<BreastfeedFirstHour>(BreastfeedFirstHour.values);
  static JsonTypeConverter2<FirstBath, int, int> $converterfirstBath =
      const EnumIndexConverter<FirstBath>(FirstBath.values);
}

class BirthData extends DataClass implements Insertable<BirthData> {
  final int id;
  final WhoCutUmbilicalCord whoCut;
  final bool collectStemCells;
  final SkinBabyContact skinBabyContact;
  final BreastfeedFirstHour breastfeedFirstHour;
  final bool breastfeedRestrictions;
  final FirstBath firstBath;
  const BirthData(
      {required this.id,
      required this.whoCut,
      required this.collectStemCells,
      required this.skinBabyContact,
      required this.breastfeedFirstHour,
      required this.breastfeedRestrictions,
      required this.firstBath});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    {
      map['who_cut'] =
          Variable<int>($BirthTable.$converterwhoCut.toSql(whoCut));
    }
    map['collect_stem_cells'] = Variable<bool>(collectStemCells);
    {
      map['skin_baby_contact'] = Variable<int>(
          $BirthTable.$converterskinBabyContact.toSql(skinBabyContact));
    }
    {
      map['breastfeed_first_hour'] = Variable<int>(
          $BirthTable.$converterbreastfeedFirstHour.toSql(breastfeedFirstHour));
    }
    map['breastfeed_restrictions'] = Variable<bool>(breastfeedRestrictions);
    {
      map['first_bath'] =
          Variable<int>($BirthTable.$converterfirstBath.toSql(firstBath));
    }
    return map;
  }

  BirthCompanion toCompanion(bool nullToAbsent) {
    return BirthCompanion(
      id: Value(id),
      whoCut: Value(whoCut),
      collectStemCells: Value(collectStemCells),
      skinBabyContact: Value(skinBabyContact),
      breastfeedFirstHour: Value(breastfeedFirstHour),
      breastfeedRestrictions: Value(breastfeedRestrictions),
      firstBath: Value(firstBath),
    );
  }

  factory BirthData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BirthData(
      id: serializer.fromJson<int>(json['id']),
      whoCut: $BirthTable.$converterwhoCut
          .fromJson(serializer.fromJson<int>(json['whoCut'])),
      collectStemCells: serializer.fromJson<bool>(json['collectStemCells']),
      skinBabyContact: $BirthTable.$converterskinBabyContact
          .fromJson(serializer.fromJson<int>(json['skinBabyContact'])),
      breastfeedFirstHour: $BirthTable.$converterbreastfeedFirstHour
          .fromJson(serializer.fromJson<int>(json['breastfeedFirstHour'])),
      breastfeedRestrictions:
          serializer.fromJson<bool>(json['breastfeedRestrictions']),
      firstBath: $BirthTable.$converterfirstBath
          .fromJson(serializer.fromJson<int>(json['firstBath'])),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'whoCut':
          serializer.toJson<int>($BirthTable.$converterwhoCut.toJson(whoCut)),
      'collectStemCells': serializer.toJson<bool>(collectStemCells),
      'skinBabyContact': serializer.toJson<int>(
          $BirthTable.$converterskinBabyContact.toJson(skinBabyContact)),
      'breastfeedFirstHour': serializer.toJson<int>($BirthTable
          .$converterbreastfeedFirstHour
          .toJson(breastfeedFirstHour)),
      'breastfeedRestrictions': serializer.toJson<bool>(breastfeedRestrictions),
      'firstBath': serializer
          .toJson<int>($BirthTable.$converterfirstBath.toJson(firstBath)),
    };
  }

  BirthData copyWith(
          {int? id,
          WhoCutUmbilicalCord? whoCut,
          bool? collectStemCells,
          SkinBabyContact? skinBabyContact,
          BreastfeedFirstHour? breastfeedFirstHour,
          bool? breastfeedRestrictions,
          FirstBath? firstBath}) =>
      BirthData(
        id: id ?? this.id,
        whoCut: whoCut ?? this.whoCut,
        collectStemCells: collectStemCells ?? this.collectStemCells,
        skinBabyContact: skinBabyContact ?? this.skinBabyContact,
        breastfeedFirstHour: breastfeedFirstHour ?? this.breastfeedFirstHour,
        breastfeedRestrictions:
            breastfeedRestrictions ?? this.breastfeedRestrictions,
        firstBath: firstBath ?? this.firstBath,
      );
  BirthData copyWithCompanion(BirthCompanion data) {
    return BirthData(
      id: data.id.present ? data.id.value : this.id,
      whoCut: data.whoCut.present ? data.whoCut.value : this.whoCut,
      collectStemCells: data.collectStemCells.present
          ? data.collectStemCells.value
          : this.collectStemCells,
      skinBabyContact: data.skinBabyContact.present
          ? data.skinBabyContact.value
          : this.skinBabyContact,
      breastfeedFirstHour: data.breastfeedFirstHour.present
          ? data.breastfeedFirstHour.value
          : this.breastfeedFirstHour,
      breastfeedRestrictions: data.breastfeedRestrictions.present
          ? data.breastfeedRestrictions.value
          : this.breastfeedRestrictions,
      firstBath: data.firstBath.present ? data.firstBath.value : this.firstBath,
    );
  }

  @override
  String toString() {
    return (StringBuffer('BirthData(')
          ..write('id: $id, ')
          ..write('whoCut: $whoCut, ')
          ..write('collectStemCells: $collectStemCells, ')
          ..write('skinBabyContact: $skinBabyContact, ')
          ..write('breastfeedFirstHour: $breastfeedFirstHour, ')
          ..write('breastfeedRestrictions: $breastfeedRestrictions, ')
          ..write('firstBath: $firstBath')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, whoCut, collectStemCells, skinBabyContact,
      breastfeedFirstHour, breastfeedRestrictions, firstBath);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BirthData &&
          other.id == this.id &&
          other.whoCut == this.whoCut &&
          other.collectStemCells == this.collectStemCells &&
          other.skinBabyContact == this.skinBabyContact &&
          other.breastfeedFirstHour == this.breastfeedFirstHour &&
          other.breastfeedRestrictions == this.breastfeedRestrictions &&
          other.firstBath == this.firstBath);
}

class BirthCompanion extends UpdateCompanion<BirthData> {
  final Value<int> id;
  final Value<WhoCutUmbilicalCord> whoCut;
  final Value<bool> collectStemCells;
  final Value<SkinBabyContact> skinBabyContact;
  final Value<BreastfeedFirstHour> breastfeedFirstHour;
  final Value<bool> breastfeedRestrictions;
  final Value<FirstBath> firstBath;
  const BirthCompanion({
    this.id = const Value.absent(),
    this.whoCut = const Value.absent(),
    this.collectStemCells = const Value.absent(),
    this.skinBabyContact = const Value.absent(),
    this.breastfeedFirstHour = const Value.absent(),
    this.breastfeedRestrictions = const Value.absent(),
    this.firstBath = const Value.absent(),
  });
  BirthCompanion.insert({
    this.id = const Value.absent(),
    required WhoCutUmbilicalCord whoCut,
    required bool collectStemCells,
    required SkinBabyContact skinBabyContact,
    required BreastfeedFirstHour breastfeedFirstHour,
    required bool breastfeedRestrictions,
    required FirstBath firstBath,
  })  : whoCut = Value(whoCut),
        collectStemCells = Value(collectStemCells),
        skinBabyContact = Value(skinBabyContact),
        breastfeedFirstHour = Value(breastfeedFirstHour),
        breastfeedRestrictions = Value(breastfeedRestrictions),
        firstBath = Value(firstBath);
  static Insertable<BirthData> custom({
    Expression<int>? id,
    Expression<int>? whoCut,
    Expression<bool>? collectStemCells,
    Expression<int>? skinBabyContact,
    Expression<int>? breastfeedFirstHour,
    Expression<bool>? breastfeedRestrictions,
    Expression<int>? firstBath,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (whoCut != null) 'who_cut': whoCut,
      if (collectStemCells != null) 'collect_stem_cells': collectStemCells,
      if (skinBabyContact != null) 'skin_baby_contact': skinBabyContact,
      if (breastfeedFirstHour != null)
        'breastfeed_first_hour': breastfeedFirstHour,
      if (breastfeedRestrictions != null)
        'breastfeed_restrictions': breastfeedRestrictions,
      if (firstBath != null) 'first_bath': firstBath,
    });
  }

  BirthCompanion copyWith(
      {Value<int>? id,
      Value<WhoCutUmbilicalCord>? whoCut,
      Value<bool>? collectStemCells,
      Value<SkinBabyContact>? skinBabyContact,
      Value<BreastfeedFirstHour>? breastfeedFirstHour,
      Value<bool>? breastfeedRestrictions,
      Value<FirstBath>? firstBath}) {
    return BirthCompanion(
      id: id ?? this.id,
      whoCut: whoCut ?? this.whoCut,
      collectStemCells: collectStemCells ?? this.collectStemCells,
      skinBabyContact: skinBabyContact ?? this.skinBabyContact,
      breastfeedFirstHour: breastfeedFirstHour ?? this.breastfeedFirstHour,
      breastfeedRestrictions:
          breastfeedRestrictions ?? this.breastfeedRestrictions,
      firstBath: firstBath ?? this.firstBath,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (whoCut.present) {
      map['who_cut'] =
          Variable<int>($BirthTable.$converterwhoCut.toSql(whoCut.value));
    }
    if (collectStemCells.present) {
      map['collect_stem_cells'] = Variable<bool>(collectStemCells.value);
    }
    if (skinBabyContact.present) {
      map['skin_baby_contact'] = Variable<int>(
          $BirthTable.$converterskinBabyContact.toSql(skinBabyContact.value));
    }
    if (breastfeedFirstHour.present) {
      map['breastfeed_first_hour'] = Variable<int>($BirthTable
          .$converterbreastfeedFirstHour
          .toSql(breastfeedFirstHour.value));
    }
    if (breastfeedRestrictions.present) {
      map['breastfeed_restrictions'] =
          Variable<bool>(breastfeedRestrictions.value);
    }
    if (firstBath.present) {
      map['first_bath'] =
          Variable<int>($BirthTable.$converterfirstBath.toSql(firstBath.value));
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BirthCompanion(')
          ..write('id: $id, ')
          ..write('whoCut: $whoCut, ')
          ..write('collectStemCells: $collectStemCells, ')
          ..write('skinBabyContact: $skinBabyContact, ')
          ..write('breastfeedFirstHour: $breastfeedFirstHour, ')
          ..write('breastfeedRestrictions: $breastfeedRestrictions, ')
          ..write('firstBath: $firstBath')
          ..write(')'))
        .toString();
  }
}

class $BirthMomentTable extends BirthMoment
    with TableInfo<$BirthMomentTable, BirthMomentData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BirthMomentTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _birthWayMeta =
      const VerificationMeta('birthWay');
  @override
  late final GeneratedColumnWithTypeConverter<BirthWay, int> birthWay =
      GeneratedColumn<int>('birth_way', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<BirthWay>($BirthMomentTable.$converterbirthWay);
  static const VerificationMeta _anesthesiaMeta =
      const VerificationMeta('anesthesia');
  @override
  late final GeneratedColumnWithTypeConverter<Anesthesia, int> anesthesia =
      GeneratedColumn<int>('anesthesia', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<Anesthesia>($BirthMomentTable.$converteranesthesia);
  static const VerificationMeta _vaginalCutMeta =
      const VerificationMeta('vaginalCut');
  @override
  late final GeneratedColumnWithTypeConverter<VaginalCut, int> vaginalCut =
      GeneratedColumn<int>('vaginal_cut', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<VaginalCut>($BirthMomentTable.$convertervaginalCut);
  static const VerificationMeta _preferredPositionMeta =
      const VerificationMeta('preferredPosition');
  @override
  late final GeneratedColumnWithTypeConverter<Positions?, int>
      preferredPosition = GeneratedColumn<int>(
              'preferred_position', aliasedName, true,
              type: DriftSqlType.int, requiredDuringInsert: false)
          .withConverter<Positions?>(
              $BirthMomentTable.$converterpreferredPositionn);
  static const VerificationMeta _otherPositionMeta =
      const VerificationMeta('otherPosition');
  @override
  late final GeneratedColumn<String> otherPosition = GeneratedColumn<String>(
      'other_position', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, birthWay, anesthesia, vaginalCut, preferredPosition, otherPosition];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'birth_moment';
  @override
  VerificationContext validateIntegrity(Insertable<BirthMomentData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    context.handle(_birthWayMeta, const VerificationResult.success());
    context.handle(_anesthesiaMeta, const VerificationResult.success());
    context.handle(_vaginalCutMeta, const VerificationResult.success());
    context.handle(_preferredPositionMeta, const VerificationResult.success());
    if (data.containsKey('other_position')) {
      context.handle(
          _otherPositionMeta,
          otherPosition.isAcceptableOrUnknown(
              data['other_position']!, _otherPositionMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  BirthMomentData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BirthMomentData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      birthWay: $BirthMomentTable.$converterbirthWay.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}birth_way'])!),
      anesthesia: $BirthMomentTable.$converteranesthesia.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.int, data['${effectivePrefix}anesthesia'])!),
      vaginalCut: $BirthMomentTable.$convertervaginalCut.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.int, data['${effectivePrefix}vaginal_cut'])!),
      preferredPosition: $BirthMomentTable.$converterpreferredPositionn.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.int, data['${effectivePrefix}preferred_position'])),
      otherPosition: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}other_position']),
    );
  }

  @override
  $BirthMomentTable createAlias(String alias) {
    return $BirthMomentTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<BirthWay, int, int> $converterbirthWay =
      const EnumIndexConverter<BirthWay>(BirthWay.values);
  static JsonTypeConverter2<Anesthesia, int, int> $converteranesthesia =
      const EnumIndexConverter<Anesthesia>(Anesthesia.values);
  static JsonTypeConverter2<VaginalCut, int, int> $convertervaginalCut =
      const EnumIndexConverter<VaginalCut>(VaginalCut.values);
  static JsonTypeConverter2<Positions, int, int> $converterpreferredPosition =
      const EnumIndexConverter<Positions>(Positions.values);
  static JsonTypeConverter2<Positions?, int?, int?>
      $converterpreferredPositionn =
      JsonTypeConverter2.asNullable($converterpreferredPosition);
}

class BirthMomentData extends DataClass implements Insertable<BirthMomentData> {
  final int id;
  final BirthWay birthWay;
  final Anesthesia anesthesia;
  final VaginalCut vaginalCut;
  final Positions? preferredPosition;
  final String? otherPosition;
  const BirthMomentData(
      {required this.id,
      required this.birthWay,
      required this.anesthesia,
      required this.vaginalCut,
      this.preferredPosition,
      this.otherPosition});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    {
      map['birth_way'] =
          Variable<int>($BirthMomentTable.$converterbirthWay.toSql(birthWay));
    }
    {
      map['anesthesia'] = Variable<int>(
          $BirthMomentTable.$converteranesthesia.toSql(anesthesia));
    }
    {
      map['vaginal_cut'] = Variable<int>(
          $BirthMomentTable.$convertervaginalCut.toSql(vaginalCut));
    }
    if (!nullToAbsent || preferredPosition != null) {
      map['preferred_position'] = Variable<int>($BirthMomentTable
          .$converterpreferredPositionn
          .toSql(preferredPosition));
    }
    if (!nullToAbsent || otherPosition != null) {
      map['other_position'] = Variable<String>(otherPosition);
    }
    return map;
  }

  BirthMomentCompanion toCompanion(bool nullToAbsent) {
    return BirthMomentCompanion(
      id: Value(id),
      birthWay: Value(birthWay),
      anesthesia: Value(anesthesia),
      vaginalCut: Value(vaginalCut),
      preferredPosition: preferredPosition == null && nullToAbsent
          ? const Value.absent()
          : Value(preferredPosition),
      otherPosition: otherPosition == null && nullToAbsent
          ? const Value.absent()
          : Value(otherPosition),
    );
  }

  factory BirthMomentData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BirthMomentData(
      id: serializer.fromJson<int>(json['id']),
      birthWay: $BirthMomentTable.$converterbirthWay
          .fromJson(serializer.fromJson<int>(json['birthWay'])),
      anesthesia: $BirthMomentTable.$converteranesthesia
          .fromJson(serializer.fromJson<int>(json['anesthesia'])),
      vaginalCut: $BirthMomentTable.$convertervaginalCut
          .fromJson(serializer.fromJson<int>(json['vaginalCut'])),
      preferredPosition: $BirthMomentTable.$converterpreferredPositionn
          .fromJson(serializer.fromJson<int?>(json['preferredPosition'])),
      otherPosition: serializer.fromJson<String?>(json['otherPosition']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'birthWay': serializer
          .toJson<int>($BirthMomentTable.$converterbirthWay.toJson(birthWay)),
      'anesthesia': serializer.toJson<int>(
          $BirthMomentTable.$converteranesthesia.toJson(anesthesia)),
      'vaginalCut': serializer.toJson<int>(
          $BirthMomentTable.$convertervaginalCut.toJson(vaginalCut)),
      'preferredPosition': serializer.toJson<int?>($BirthMomentTable
          .$converterpreferredPositionn
          .toJson(preferredPosition)),
      'otherPosition': serializer.toJson<String?>(otherPosition),
    };
  }

  BirthMomentData copyWith(
          {int? id,
          BirthWay? birthWay,
          Anesthesia? anesthesia,
          VaginalCut? vaginalCut,
          Value<Positions?> preferredPosition = const Value.absent(),
          Value<String?> otherPosition = const Value.absent()}) =>
      BirthMomentData(
        id: id ?? this.id,
        birthWay: birthWay ?? this.birthWay,
        anesthesia: anesthesia ?? this.anesthesia,
        vaginalCut: vaginalCut ?? this.vaginalCut,
        preferredPosition: preferredPosition.present
            ? preferredPosition.value
            : this.preferredPosition,
        otherPosition:
            otherPosition.present ? otherPosition.value : this.otherPosition,
      );
  BirthMomentData copyWithCompanion(BirthMomentCompanion data) {
    return BirthMomentData(
      id: data.id.present ? data.id.value : this.id,
      birthWay: data.birthWay.present ? data.birthWay.value : this.birthWay,
      anesthesia:
          data.anesthesia.present ? data.anesthesia.value : this.anesthesia,
      vaginalCut:
          data.vaginalCut.present ? data.vaginalCut.value : this.vaginalCut,
      preferredPosition: data.preferredPosition.present
          ? data.preferredPosition.value
          : this.preferredPosition,
      otherPosition: data.otherPosition.present
          ? data.otherPosition.value
          : this.otherPosition,
    );
  }

  @override
  String toString() {
    return (StringBuffer('BirthMomentData(')
          ..write('id: $id, ')
          ..write('birthWay: $birthWay, ')
          ..write('anesthesia: $anesthesia, ')
          ..write('vaginalCut: $vaginalCut, ')
          ..write('preferredPosition: $preferredPosition, ')
          ..write('otherPosition: $otherPosition')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, birthWay, anesthesia, vaginalCut, preferredPosition, otherPosition);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BirthMomentData &&
          other.id == this.id &&
          other.birthWay == this.birthWay &&
          other.anesthesia == this.anesthesia &&
          other.vaginalCut == this.vaginalCut &&
          other.preferredPosition == this.preferredPosition &&
          other.otherPosition == this.otherPosition);
}

class BirthMomentCompanion extends UpdateCompanion<BirthMomentData> {
  final Value<int> id;
  final Value<BirthWay> birthWay;
  final Value<Anesthesia> anesthesia;
  final Value<VaginalCut> vaginalCut;
  final Value<Positions?> preferredPosition;
  final Value<String?> otherPosition;
  const BirthMomentCompanion({
    this.id = const Value.absent(),
    this.birthWay = const Value.absent(),
    this.anesthesia = const Value.absent(),
    this.vaginalCut = const Value.absent(),
    this.preferredPosition = const Value.absent(),
    this.otherPosition = const Value.absent(),
  });
  BirthMomentCompanion.insert({
    this.id = const Value.absent(),
    required BirthWay birthWay,
    required Anesthesia anesthesia,
    required VaginalCut vaginalCut,
    this.preferredPosition = const Value.absent(),
    this.otherPosition = const Value.absent(),
  })  : birthWay = Value(birthWay),
        anesthesia = Value(anesthesia),
        vaginalCut = Value(vaginalCut);
  static Insertable<BirthMomentData> custom({
    Expression<int>? id,
    Expression<int>? birthWay,
    Expression<int>? anesthesia,
    Expression<int>? vaginalCut,
    Expression<int>? preferredPosition,
    Expression<String>? otherPosition,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (birthWay != null) 'birth_way': birthWay,
      if (anesthesia != null) 'anesthesia': anesthesia,
      if (vaginalCut != null) 'vaginal_cut': vaginalCut,
      if (preferredPosition != null) 'preferred_position': preferredPosition,
      if (otherPosition != null) 'other_position': otherPosition,
    });
  }

  BirthMomentCompanion copyWith(
      {Value<int>? id,
      Value<BirthWay>? birthWay,
      Value<Anesthesia>? anesthesia,
      Value<VaginalCut>? vaginalCut,
      Value<Positions?>? preferredPosition,
      Value<String?>? otherPosition}) {
    return BirthMomentCompanion(
      id: id ?? this.id,
      birthWay: birthWay ?? this.birthWay,
      anesthesia: anesthesia ?? this.anesthesia,
      vaginalCut: vaginalCut ?? this.vaginalCut,
      preferredPosition: preferredPosition ?? this.preferredPosition,
      otherPosition: otherPosition ?? this.otherPosition,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (birthWay.present) {
      map['birth_way'] = Variable<int>(
          $BirthMomentTable.$converterbirthWay.toSql(birthWay.value));
    }
    if (anesthesia.present) {
      map['anesthesia'] = Variable<int>(
          $BirthMomentTable.$converteranesthesia.toSql(anesthesia.value));
    }
    if (vaginalCut.present) {
      map['vaginal_cut'] = Variable<int>(
          $BirthMomentTable.$convertervaginalCut.toSql(vaginalCut.value));
    }
    if (preferredPosition.present) {
      map['preferred_position'] = Variable<int>($BirthMomentTable
          .$converterpreferredPositionn
          .toSql(preferredPosition.value));
    }
    if (otherPosition.present) {
      map['other_position'] = Variable<String>(otherPosition.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BirthMomentCompanion(')
          ..write('id: $id, ')
          ..write('birthWay: $birthWay, ')
          ..write('anesthesia: $anesthesia, ')
          ..write('vaginalCut: $vaginalCut, ')
          ..write('preferredPosition: $preferredPosition, ')
          ..write('otherPosition: $otherPosition')
          ..write(')'))
        .toString();
  }
}

class $CurrentPregnancyTable extends CurrentPregnancy
    with TableInfo<$CurrentPregnancyTable, CurrentPregnancyData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CurrentPregnancyTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _lastMenstrualPeriodMeta =
      const VerificationMeta('lastMenstrualPeriod');
  @override
  late final GeneratedColumn<String> lastMenstrualPeriod =
      GeneratedColumn<String>('last_menstrual_period', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _firstUltrasoundMeta =
      const VerificationMeta('firstUltrasound');
  @override
  late final GeneratedColumn<String> firstUltrasound = GeneratedColumn<String>(
      'first_ultrasound', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, lastMenstrualPeriod, firstUltrasound];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'current_pregnancy';
  @override
  VerificationContext validateIntegrity(
      Insertable<CurrentPregnancyData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('last_menstrual_period')) {
      context.handle(
          _lastMenstrualPeriodMeta,
          lastMenstrualPeriod.isAcceptableOrUnknown(
              data['last_menstrual_period']!, _lastMenstrualPeriodMeta));
    }
    if (data.containsKey('first_ultrasound')) {
      context.handle(
          _firstUltrasoundMeta,
          firstUltrasound.isAcceptableOrUnknown(
              data['first_ultrasound']!, _firstUltrasoundMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CurrentPregnancyData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CurrentPregnancyData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      lastMenstrualPeriod: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}last_menstrual_period']),
      firstUltrasound: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}first_ultrasound']),
    );
  }

  @override
  $CurrentPregnancyTable createAlias(String alias) {
    return $CurrentPregnancyTable(attachedDatabase, alias);
  }
}

class CurrentPregnancyData extends DataClass
    implements Insertable<CurrentPregnancyData> {
  final int id;
  final String? lastMenstrualPeriod;
  final String? firstUltrasound;
  const CurrentPregnancyData(
      {required this.id, this.lastMenstrualPeriod, this.firstUltrasound});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || lastMenstrualPeriod != null) {
      map['last_menstrual_period'] = Variable<String>(lastMenstrualPeriod);
    }
    if (!nullToAbsent || firstUltrasound != null) {
      map['first_ultrasound'] = Variable<String>(firstUltrasound);
    }
    return map;
  }

  CurrentPregnancyCompanion toCompanion(bool nullToAbsent) {
    return CurrentPregnancyCompanion(
      id: Value(id),
      lastMenstrualPeriod: lastMenstrualPeriod == null && nullToAbsent
          ? const Value.absent()
          : Value(lastMenstrualPeriod),
      firstUltrasound: firstUltrasound == null && nullToAbsent
          ? const Value.absent()
          : Value(firstUltrasound),
    );
  }

  factory CurrentPregnancyData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CurrentPregnancyData(
      id: serializer.fromJson<int>(json['id']),
      lastMenstrualPeriod:
          serializer.fromJson<String?>(json['lastMenstrualPeriod']),
      firstUltrasound: serializer.fromJson<String?>(json['firstUltrasound']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'lastMenstrualPeriod': serializer.toJson<String?>(lastMenstrualPeriod),
      'firstUltrasound': serializer.toJson<String?>(firstUltrasound),
    };
  }

  CurrentPregnancyData copyWith(
          {int? id,
          Value<String?> lastMenstrualPeriod = const Value.absent(),
          Value<String?> firstUltrasound = const Value.absent()}) =>
      CurrentPregnancyData(
        id: id ?? this.id,
        lastMenstrualPeriod: lastMenstrualPeriod.present
            ? lastMenstrualPeriod.value
            : this.lastMenstrualPeriod,
        firstUltrasound: firstUltrasound.present
            ? firstUltrasound.value
            : this.firstUltrasound,
      );
  CurrentPregnancyData copyWithCompanion(CurrentPregnancyCompanion data) {
    return CurrentPregnancyData(
      id: data.id.present ? data.id.value : this.id,
      lastMenstrualPeriod: data.lastMenstrualPeriod.present
          ? data.lastMenstrualPeriod.value
          : this.lastMenstrualPeriod,
      firstUltrasound: data.firstUltrasound.present
          ? data.firstUltrasound.value
          : this.firstUltrasound,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CurrentPregnancyData(')
          ..write('id: $id, ')
          ..write('lastMenstrualPeriod: $lastMenstrualPeriod, ')
          ..write('firstUltrasound: $firstUltrasound')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, lastMenstrualPeriod, firstUltrasound);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CurrentPregnancyData &&
          other.id == this.id &&
          other.lastMenstrualPeriod == this.lastMenstrualPeriod &&
          other.firstUltrasound == this.firstUltrasound);
}

class CurrentPregnancyCompanion extends UpdateCompanion<CurrentPregnancyData> {
  final Value<int> id;
  final Value<String?> lastMenstrualPeriod;
  final Value<String?> firstUltrasound;
  const CurrentPregnancyCompanion({
    this.id = const Value.absent(),
    this.lastMenstrualPeriod = const Value.absent(),
    this.firstUltrasound = const Value.absent(),
  });
  CurrentPregnancyCompanion.insert({
    this.id = const Value.absent(),
    this.lastMenstrualPeriod = const Value.absent(),
    this.firstUltrasound = const Value.absent(),
  });
  static Insertable<CurrentPregnancyData> custom({
    Expression<int>? id,
    Expression<String>? lastMenstrualPeriod,
    Expression<String>? firstUltrasound,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (lastMenstrualPeriod != null)
        'last_menstrual_period': lastMenstrualPeriod,
      if (firstUltrasound != null) 'first_ultrasound': firstUltrasound,
    });
  }

  CurrentPregnancyCompanion copyWith(
      {Value<int>? id,
      Value<String?>? lastMenstrualPeriod,
      Value<String?>? firstUltrasound}) {
    return CurrentPregnancyCompanion(
      id: id ?? this.id,
      lastMenstrualPeriod: lastMenstrualPeriod ?? this.lastMenstrualPeriod,
      firstUltrasound: firstUltrasound ?? this.firstUltrasound,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (lastMenstrualPeriod.present) {
      map['last_menstrual_period'] =
          Variable<String>(lastMenstrualPeriod.value);
    }
    if (firstUltrasound.present) {
      map['first_ultrasound'] = Variable<String>(firstUltrasound.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CurrentPregnancyCompanion(')
          ..write('id: $id, ')
          ..write('lastMenstrualPeriod: $lastMenstrualPeriod, ')
          ..write('firstUltrasound: $firstUltrasound')
          ..write(')'))
        .toString();
  }
}

class $ExpectationsTable extends Expectations
    with TableInfo<$ExpectationsTable, Expectation> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ExpectationsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _companionMeta =
      const VerificationMeta('companion');
  @override
  late final GeneratedColumnWithTypeConverter<Alternatives, int> companion =
      GeneratedColumn<int>('companion', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<Alternatives>($ExpectationsTable.$convertercompanion);
  static const VerificationMeta _shaveIntimateHairMeta =
      const VerificationMeta('shaveIntimateHair');
  @override
  late final GeneratedColumnWithTypeConverter<Alternatives, int>
      shaveIntimateHair = GeneratedColumn<int>(
              'shave_intimate_hair', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<Alternatives>(
              $ExpectationsTable.$convertershaveIntimateHair);
  static const VerificationMeta _bowelWashOrSuppositoryMeta =
      const VerificationMeta('bowelWashOrSuppository');
  @override
  late final GeneratedColumnWithTypeConverter<Alternatives, int>
      bowelWashOrSuppository = GeneratedColumn<int>(
              'bowel_wash_or_suppository', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<Alternatives>(
              $ExpectationsTable.$converterbowelWashOrSuppository);
  static const VerificationMeta _lowLightEnvironmentMeta =
      const VerificationMeta('lowLightEnvironment');
  @override
  late final GeneratedColumnWithTypeConverter<Alternatives, int>
      lowLightEnvironment = GeneratedColumn<int>(
              'low_light_environment', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<Alternatives>(
              $ExpectationsTable.$converterlowLightEnvironment);
  static const VerificationMeta _listenToMusicMeta =
      const VerificationMeta('listenToMusic');
  @override
  late final GeneratedColumnWithTypeConverter<Alternatives, int> listenToMusic =
      GeneratedColumn<int>('listen_to_music', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<Alternatives>(
              $ExpectationsTable.$converterlistenToMusic);
  static const VerificationMeta _drinkLiquidsMeta =
      const VerificationMeta('drinkLiquids');
  @override
  late final GeneratedColumnWithTypeConverter<Alternatives, int> drinkLiquids =
      GeneratedColumn<int>('drink_liquids', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<Alternatives>(
              $ExpectationsTable.$converterdrinkLiquids);
  static const VerificationMeta _recordPhotosOrVideosMeta =
      const VerificationMeta('recordPhotosOrVideos');
  @override
  late final GeneratedColumnWithTypeConverter<Alternatives, int>
      recordPhotosOrVideos = GeneratedColumn<int>(
              'record_photos_or_videos', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<Alternatives>(
              $ExpectationsTable.$converterrecordPhotosOrVideos);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        companion,
        shaveIntimateHair,
        bowelWashOrSuppository,
        lowLightEnvironment,
        listenToMusic,
        drinkLiquids,
        recordPhotosOrVideos
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'expectations';
  @override
  VerificationContext validateIntegrity(Insertable<Expectation> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    context.handle(_companionMeta, const VerificationResult.success());
    context.handle(_shaveIntimateHairMeta, const VerificationResult.success());
    context.handle(
        _bowelWashOrSuppositoryMeta, const VerificationResult.success());
    context.handle(
        _lowLightEnvironmentMeta, const VerificationResult.success());
    context.handle(_listenToMusicMeta, const VerificationResult.success());
    context.handle(_drinkLiquidsMeta, const VerificationResult.success());
    context.handle(
        _recordPhotosOrVideosMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Expectation map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Expectation(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      companion: $ExpectationsTable.$convertercompanion.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}companion'])!),
      shaveIntimateHair: $ExpectationsTable.$convertershaveIntimateHair.fromSql(
          attachedDatabase.typeMapping.read(DriftSqlType.int,
              data['${effectivePrefix}shave_intimate_hair'])!),
      bowelWashOrSuppository: $ExpectationsTable
          .$converterbowelWashOrSuppository
          .fromSql(attachedDatabase.typeMapping.read(DriftSqlType.int,
              data['${effectivePrefix}bowel_wash_or_suppository'])!),
      lowLightEnvironment: $ExpectationsTable.$converterlowLightEnvironment
          .fromSql(attachedDatabase.typeMapping.read(DriftSqlType.int,
              data['${effectivePrefix}low_light_environment'])!),
      listenToMusic: $ExpectationsTable.$converterlistenToMusic.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.int, data['${effectivePrefix}listen_to_music'])!),
      drinkLiquids: $ExpectationsTable.$converterdrinkLiquids.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.int, data['${effectivePrefix}drink_liquids'])!),
      recordPhotosOrVideos: $ExpectationsTable.$converterrecordPhotosOrVideos
          .fromSql(attachedDatabase.typeMapping.read(DriftSqlType.int,
              data['${effectivePrefix}record_photos_or_videos'])!),
    );
  }

  @override
  $ExpectationsTable createAlias(String alias) {
    return $ExpectationsTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<Alternatives, int, int> $convertercompanion =
      const EnumIndexConverter<Alternatives>(Alternatives.values);
  static JsonTypeConverter2<Alternatives, int, int>
      $convertershaveIntimateHair =
      const EnumIndexConverter<Alternatives>(Alternatives.values);
  static JsonTypeConverter2<Alternatives, int, int>
      $converterbowelWashOrSuppository =
      const EnumIndexConverter<Alternatives>(Alternatives.values);
  static JsonTypeConverter2<Alternatives, int, int>
      $converterlowLightEnvironment =
      const EnumIndexConverter<Alternatives>(Alternatives.values);
  static JsonTypeConverter2<Alternatives, int, int> $converterlistenToMusic =
      const EnumIndexConverter<Alternatives>(Alternatives.values);
  static JsonTypeConverter2<Alternatives, int, int> $converterdrinkLiquids =
      const EnumIndexConverter<Alternatives>(Alternatives.values);
  static JsonTypeConverter2<Alternatives, int, int>
      $converterrecordPhotosOrVideos =
      const EnumIndexConverter<Alternatives>(Alternatives.values);
}

class Expectation extends DataClass implements Insertable<Expectation> {
  final int id;
  final Alternatives companion;
  final Alternatives shaveIntimateHair;
  final Alternatives bowelWashOrSuppository;
  final Alternatives lowLightEnvironment;
  final Alternatives listenToMusic;
  final Alternatives drinkLiquids;
  final Alternatives recordPhotosOrVideos;
  const Expectation(
      {required this.id,
      required this.companion,
      required this.shaveIntimateHair,
      required this.bowelWashOrSuppository,
      required this.lowLightEnvironment,
      required this.listenToMusic,
      required this.drinkLiquids,
      required this.recordPhotosOrVideos});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    {
      map['companion'] = Variable<int>(
          $ExpectationsTable.$convertercompanion.toSql(companion));
    }
    {
      map['shave_intimate_hair'] = Variable<int>($ExpectationsTable
          .$convertershaveIntimateHair
          .toSql(shaveIntimateHair));
    }
    {
      map['bowel_wash_or_suppository'] = Variable<int>($ExpectationsTable
          .$converterbowelWashOrSuppository
          .toSql(bowelWashOrSuppository));
    }
    {
      map['low_light_environment'] = Variable<int>($ExpectationsTable
          .$converterlowLightEnvironment
          .toSql(lowLightEnvironment));
    }
    {
      map['listen_to_music'] = Variable<int>(
          $ExpectationsTable.$converterlistenToMusic.toSql(listenToMusic));
    }
    {
      map['drink_liquids'] = Variable<int>(
          $ExpectationsTable.$converterdrinkLiquids.toSql(drinkLiquids));
    }
    {
      map['record_photos_or_videos'] = Variable<int>($ExpectationsTable
          .$converterrecordPhotosOrVideos
          .toSql(recordPhotosOrVideos));
    }
    return map;
  }

  ExpectationsCompanion toCompanion(bool nullToAbsent) {
    return ExpectationsCompanion(
      id: Value(id),
      companion: Value(companion),
      shaveIntimateHair: Value(shaveIntimateHair),
      bowelWashOrSuppository: Value(bowelWashOrSuppository),
      lowLightEnvironment: Value(lowLightEnvironment),
      listenToMusic: Value(listenToMusic),
      drinkLiquids: Value(drinkLiquids),
      recordPhotosOrVideos: Value(recordPhotosOrVideos),
    );
  }

  factory Expectation.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Expectation(
      id: serializer.fromJson<int>(json['id']),
      companion: $ExpectationsTable.$convertercompanion
          .fromJson(serializer.fromJson<int>(json['companion'])),
      shaveIntimateHair: $ExpectationsTable.$convertershaveIntimateHair
          .fromJson(serializer.fromJson<int>(json['shaveIntimateHair'])),
      bowelWashOrSuppository: $ExpectationsTable
          .$converterbowelWashOrSuppository
          .fromJson(serializer.fromJson<int>(json['bowelWashOrSuppository'])),
      lowLightEnvironment: $ExpectationsTable.$converterlowLightEnvironment
          .fromJson(serializer.fromJson<int>(json['lowLightEnvironment'])),
      listenToMusic: $ExpectationsTable.$converterlistenToMusic
          .fromJson(serializer.fromJson<int>(json['listenToMusic'])),
      drinkLiquids: $ExpectationsTable.$converterdrinkLiquids
          .fromJson(serializer.fromJson<int>(json['drinkLiquids'])),
      recordPhotosOrVideos: $ExpectationsTable.$converterrecordPhotosOrVideos
          .fromJson(serializer.fromJson<int>(json['recordPhotosOrVideos'])),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'companion': serializer.toJson<int>(
          $ExpectationsTable.$convertercompanion.toJson(companion)),
      'shaveIntimateHair': serializer.toJson<int>($ExpectationsTable
          .$convertershaveIntimateHair
          .toJson(shaveIntimateHair)),
      'bowelWashOrSuppository': serializer.toJson<int>($ExpectationsTable
          .$converterbowelWashOrSuppository
          .toJson(bowelWashOrSuppository)),
      'lowLightEnvironment': serializer.toJson<int>($ExpectationsTable
          .$converterlowLightEnvironment
          .toJson(lowLightEnvironment)),
      'listenToMusic': serializer.toJson<int>(
          $ExpectationsTable.$converterlistenToMusic.toJson(listenToMusic)),
      'drinkLiquids': serializer.toJson<int>(
          $ExpectationsTable.$converterdrinkLiquids.toJson(drinkLiquids)),
      'recordPhotosOrVideos': serializer.toJson<int>($ExpectationsTable
          .$converterrecordPhotosOrVideos
          .toJson(recordPhotosOrVideos)),
    };
  }

  Expectation copyWith(
          {int? id,
          Alternatives? companion,
          Alternatives? shaveIntimateHair,
          Alternatives? bowelWashOrSuppository,
          Alternatives? lowLightEnvironment,
          Alternatives? listenToMusic,
          Alternatives? drinkLiquids,
          Alternatives? recordPhotosOrVideos}) =>
      Expectation(
        id: id ?? this.id,
        companion: companion ?? this.companion,
        shaveIntimateHair: shaveIntimateHair ?? this.shaveIntimateHair,
        bowelWashOrSuppository:
            bowelWashOrSuppository ?? this.bowelWashOrSuppository,
        lowLightEnvironment: lowLightEnvironment ?? this.lowLightEnvironment,
        listenToMusic: listenToMusic ?? this.listenToMusic,
        drinkLiquids: drinkLiquids ?? this.drinkLiquids,
        recordPhotosOrVideos: recordPhotosOrVideos ?? this.recordPhotosOrVideos,
      );
  Expectation copyWithCompanion(ExpectationsCompanion data) {
    return Expectation(
      id: data.id.present ? data.id.value : this.id,
      companion: data.companion.present ? data.companion.value : this.companion,
      shaveIntimateHair: data.shaveIntimateHair.present
          ? data.shaveIntimateHair.value
          : this.shaveIntimateHair,
      bowelWashOrSuppository: data.bowelWashOrSuppository.present
          ? data.bowelWashOrSuppository.value
          : this.bowelWashOrSuppository,
      lowLightEnvironment: data.lowLightEnvironment.present
          ? data.lowLightEnvironment.value
          : this.lowLightEnvironment,
      listenToMusic: data.listenToMusic.present
          ? data.listenToMusic.value
          : this.listenToMusic,
      drinkLiquids: data.drinkLiquids.present
          ? data.drinkLiquids.value
          : this.drinkLiquids,
      recordPhotosOrVideos: data.recordPhotosOrVideos.present
          ? data.recordPhotosOrVideos.value
          : this.recordPhotosOrVideos,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Expectation(')
          ..write('id: $id, ')
          ..write('companion: $companion, ')
          ..write('shaveIntimateHair: $shaveIntimateHair, ')
          ..write('bowelWashOrSuppository: $bowelWashOrSuppository, ')
          ..write('lowLightEnvironment: $lowLightEnvironment, ')
          ..write('listenToMusic: $listenToMusic, ')
          ..write('drinkLiquids: $drinkLiquids, ')
          ..write('recordPhotosOrVideos: $recordPhotosOrVideos')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      companion,
      shaveIntimateHair,
      bowelWashOrSuppository,
      lowLightEnvironment,
      listenToMusic,
      drinkLiquids,
      recordPhotosOrVideos);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Expectation &&
          other.id == this.id &&
          other.companion == this.companion &&
          other.shaveIntimateHair == this.shaveIntimateHair &&
          other.bowelWashOrSuppository == this.bowelWashOrSuppository &&
          other.lowLightEnvironment == this.lowLightEnvironment &&
          other.listenToMusic == this.listenToMusic &&
          other.drinkLiquids == this.drinkLiquids &&
          other.recordPhotosOrVideos == this.recordPhotosOrVideos);
}

class ExpectationsCompanion extends UpdateCompanion<Expectation> {
  final Value<int> id;
  final Value<Alternatives> companion;
  final Value<Alternatives> shaveIntimateHair;
  final Value<Alternatives> bowelWashOrSuppository;
  final Value<Alternatives> lowLightEnvironment;
  final Value<Alternatives> listenToMusic;
  final Value<Alternatives> drinkLiquids;
  final Value<Alternatives> recordPhotosOrVideos;
  const ExpectationsCompanion({
    this.id = const Value.absent(),
    this.companion = const Value.absent(),
    this.shaveIntimateHair = const Value.absent(),
    this.bowelWashOrSuppository = const Value.absent(),
    this.lowLightEnvironment = const Value.absent(),
    this.listenToMusic = const Value.absent(),
    this.drinkLiquids = const Value.absent(),
    this.recordPhotosOrVideos = const Value.absent(),
  });
  ExpectationsCompanion.insert({
    this.id = const Value.absent(),
    required Alternatives companion,
    required Alternatives shaveIntimateHair,
    required Alternatives bowelWashOrSuppository,
    required Alternatives lowLightEnvironment,
    required Alternatives listenToMusic,
    required Alternatives drinkLiquids,
    required Alternatives recordPhotosOrVideos,
  })  : companion = Value(companion),
        shaveIntimateHair = Value(shaveIntimateHair),
        bowelWashOrSuppository = Value(bowelWashOrSuppository),
        lowLightEnvironment = Value(lowLightEnvironment),
        listenToMusic = Value(listenToMusic),
        drinkLiquids = Value(drinkLiquids),
        recordPhotosOrVideos = Value(recordPhotosOrVideos);
  static Insertable<Expectation> custom({
    Expression<int>? id,
    Expression<int>? companion,
    Expression<int>? shaveIntimateHair,
    Expression<int>? bowelWashOrSuppository,
    Expression<int>? lowLightEnvironment,
    Expression<int>? listenToMusic,
    Expression<int>? drinkLiquids,
    Expression<int>? recordPhotosOrVideos,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (companion != null) 'companion': companion,
      if (shaveIntimateHair != null) 'shave_intimate_hair': shaveIntimateHair,
      if (bowelWashOrSuppository != null)
        'bowel_wash_or_suppository': bowelWashOrSuppository,
      if (lowLightEnvironment != null)
        'low_light_environment': lowLightEnvironment,
      if (listenToMusic != null) 'listen_to_music': listenToMusic,
      if (drinkLiquids != null) 'drink_liquids': drinkLiquids,
      if (recordPhotosOrVideos != null)
        'record_photos_or_videos': recordPhotosOrVideos,
    });
  }

  ExpectationsCompanion copyWith(
      {Value<int>? id,
      Value<Alternatives>? companion,
      Value<Alternatives>? shaveIntimateHair,
      Value<Alternatives>? bowelWashOrSuppository,
      Value<Alternatives>? lowLightEnvironment,
      Value<Alternatives>? listenToMusic,
      Value<Alternatives>? drinkLiquids,
      Value<Alternatives>? recordPhotosOrVideos}) {
    return ExpectationsCompanion(
      id: id ?? this.id,
      companion: companion ?? this.companion,
      shaveIntimateHair: shaveIntimateHair ?? this.shaveIntimateHair,
      bowelWashOrSuppository:
          bowelWashOrSuppository ?? this.bowelWashOrSuppository,
      lowLightEnvironment: lowLightEnvironment ?? this.lowLightEnvironment,
      listenToMusic: listenToMusic ?? this.listenToMusic,
      drinkLiquids: drinkLiquids ?? this.drinkLiquids,
      recordPhotosOrVideos: recordPhotosOrVideos ?? this.recordPhotosOrVideos,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (companion.present) {
      map['companion'] = Variable<int>(
          $ExpectationsTable.$convertercompanion.toSql(companion.value));
    }
    if (shaveIntimateHair.present) {
      map['shave_intimate_hair'] = Variable<int>($ExpectationsTable
          .$convertershaveIntimateHair
          .toSql(shaveIntimateHair.value));
    }
    if (bowelWashOrSuppository.present) {
      map['bowel_wash_or_suppository'] = Variable<int>($ExpectationsTable
          .$converterbowelWashOrSuppository
          .toSql(bowelWashOrSuppository.value));
    }
    if (lowLightEnvironment.present) {
      map['low_light_environment'] = Variable<int>($ExpectationsTable
          .$converterlowLightEnvironment
          .toSql(lowLightEnvironment.value));
    }
    if (listenToMusic.present) {
      map['listen_to_music'] = Variable<int>($ExpectationsTable
          .$converterlistenToMusic
          .toSql(listenToMusic.value));
    }
    if (drinkLiquids.present) {
      map['drink_liquids'] = Variable<int>(
          $ExpectationsTable.$converterdrinkLiquids.toSql(drinkLiquids.value));
    }
    if (recordPhotosOrVideos.present) {
      map['record_photos_or_videos'] = Variable<int>($ExpectationsTable
          .$converterrecordPhotosOrVideos
          .toSql(recordPhotosOrVideos.value));
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExpectationsCompanion(')
          ..write('id: $id, ')
          ..write('companion: $companion, ')
          ..write('shaveIntimateHair: $shaveIntimateHair, ')
          ..write('bowelWashOrSuppository: $bowelWashOrSuppository, ')
          ..write('lowLightEnvironment: $lowLightEnvironment, ')
          ..write('listenToMusic: $listenToMusic, ')
          ..write('drinkLiquids: $drinkLiquids, ')
          ..write('recordPhotosOrVideos: $recordPhotosOrVideos')
          ..write(')'))
        .toString();
  }
}

class $ObservationsTable extends Observations
    with TableInfo<$ObservationsTable, Observation> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ObservationsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _observationsMeta =
      const VerificationMeta('observations');
  @override
  late final GeneratedColumn<String> observations = GeneratedColumn<String>(
      'observations', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, observations];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'observations';
  @override
  VerificationContext validateIntegrity(Insertable<Observation> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('observations')) {
      context.handle(
          _observationsMeta,
          observations.isAcceptableOrUnknown(
              data['observations']!, _observationsMeta));
    } else if (isInserting) {
      context.missing(_observationsMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Observation map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Observation(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      observations: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}observations'])!,
    );
  }

  @override
  $ObservationsTable createAlias(String alias) {
    return $ObservationsTable(attachedDatabase, alias);
  }
}

class Observation extends DataClass implements Insertable<Observation> {
  final int id;
  final String observations;
  const Observation({required this.id, required this.observations});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['observations'] = Variable<String>(observations);
    return map;
  }

  ObservationsCompanion toCompanion(bool nullToAbsent) {
    return ObservationsCompanion(
      id: Value(id),
      observations: Value(observations),
    );
  }

  factory Observation.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Observation(
      id: serializer.fromJson<int>(json['id']),
      observations: serializer.fromJson<String>(json['observations']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'observations': serializer.toJson<String>(observations),
    };
  }

  Observation copyWith({int? id, String? observations}) => Observation(
        id: id ?? this.id,
        observations: observations ?? this.observations,
      );
  Observation copyWithCompanion(ObservationsCompanion data) {
    return Observation(
      id: data.id.present ? data.id.value : this.id,
      observations: data.observations.present
          ? data.observations.value
          : this.observations,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Observation(')
          ..write('id: $id, ')
          ..write('observations: $observations')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, observations);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Observation &&
          other.id == this.id &&
          other.observations == this.observations);
}

class ObservationsCompanion extends UpdateCompanion<Observation> {
  final Value<int> id;
  final Value<String> observations;
  const ObservationsCompanion({
    this.id = const Value.absent(),
    this.observations = const Value.absent(),
  });
  ObservationsCompanion.insert({
    this.id = const Value.absent(),
    required String observations,
  }) : observations = Value(observations);
  static Insertable<Observation> custom({
    Expression<int>? id,
    Expression<String>? observations,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (observations != null) 'observations': observations,
    });
  }

  ObservationsCompanion copyWith(
      {Value<int>? id, Value<String>? observations}) {
    return ObservationsCompanion(
      id: id ?? this.id,
      observations: observations ?? this.observations,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (observations.present) {
      map['observations'] = Variable<String>(observations.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ObservationsCompanion(')
          ..write('id: $id, ')
          ..write('observations: $observations')
          ..write(')'))
        .toString();
  }
}

class $PainReliefTable extends PainRelief
    with TableInfo<$PainReliefTable, PainReliefData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PainReliefTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _painReliefMeta =
      const VerificationMeta('painRelief');
  @override
  late final GeneratedColumnWithTypeConverter<NeedPainRelief, int> painRelief =
      GeneratedColumn<int>('pain_relief', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<NeedPainRelief>($PainReliefTable.$converterpainRelief);
  static const VerificationMeta _massageMeta =
      const VerificationMeta('massage');
  @override
  late final GeneratedColumn<bool> massage = GeneratedColumn<bool>(
      'massage', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("massage" IN (0, 1))'));
  static const VerificationMeta _ballExercisesMeta =
      const VerificationMeta('ballExercises');
  @override
  late final GeneratedColumn<bool> ballExercises = GeneratedColumn<bool>(
      'ball_exercises', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("ball_exercises" IN (0, 1))'));
  static const VerificationMeta _breathRelaxExercisesMeta =
      const VerificationMeta('breathRelaxExercises');
  @override
  late final GeneratedColumn<bool> breathRelaxExercises = GeneratedColumn<bool>(
      'breath_relax_exercises', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("breath_relax_exercises" IN (0, 1))'));
  static const VerificationMeta _showerBathMeta =
      const VerificationMeta('showerBath');
  @override
  late final GeneratedColumn<bool> showerBath = GeneratedColumn<bool>(
      'shower_bath', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("shower_bath" IN (0, 1))'));
  static const VerificationMeta _bathtubBathMeta =
      const VerificationMeta('bathtubBath');
  @override
  late final GeneratedColumn<bool> bathtubBath = GeneratedColumn<bool>(
      'bathtub_bath', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("bathtub_bath" IN (0, 1))'));
  static const VerificationMeta _acupunctureMeta =
      const VerificationMeta('acupuncture');
  @override
  late final GeneratedColumn<bool> acupuncture = GeneratedColumn<bool>(
      'acupuncture', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("acupuncture" IN (0, 1))'));
  static const VerificationMeta _acupressureMeta =
      const VerificationMeta('acupressure');
  @override
  late final GeneratedColumn<bool> acupressure = GeneratedColumn<bool>(
      'acupressure', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("acupressure" IN (0, 1))'));
  static const VerificationMeta _otherMethodMeta =
      const VerificationMeta('otherMethod');
  @override
  late final GeneratedColumn<bool> otherMethod = GeneratedColumn<bool>(
      'other_method', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("other_method" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        painRelief,
        massage,
        ballExercises,
        breathRelaxExercises,
        showerBath,
        bathtubBath,
        acupuncture,
        acupressure,
        otherMethod
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pain_relief';
  @override
  VerificationContext validateIntegrity(Insertable<PainReliefData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    context.handle(_painReliefMeta, const VerificationResult.success());
    if (data.containsKey('massage')) {
      context.handle(_massageMeta,
          massage.isAcceptableOrUnknown(data['massage']!, _massageMeta));
    } else if (isInserting) {
      context.missing(_massageMeta);
    }
    if (data.containsKey('ball_exercises')) {
      context.handle(
          _ballExercisesMeta,
          ballExercises.isAcceptableOrUnknown(
              data['ball_exercises']!, _ballExercisesMeta));
    } else if (isInserting) {
      context.missing(_ballExercisesMeta);
    }
    if (data.containsKey('breath_relax_exercises')) {
      context.handle(
          _breathRelaxExercisesMeta,
          breathRelaxExercises.isAcceptableOrUnknown(
              data['breath_relax_exercises']!, _breathRelaxExercisesMeta));
    } else if (isInserting) {
      context.missing(_breathRelaxExercisesMeta);
    }
    if (data.containsKey('shower_bath')) {
      context.handle(
          _showerBathMeta,
          showerBath.isAcceptableOrUnknown(
              data['shower_bath']!, _showerBathMeta));
    } else if (isInserting) {
      context.missing(_showerBathMeta);
    }
    if (data.containsKey('bathtub_bath')) {
      context.handle(
          _bathtubBathMeta,
          bathtubBath.isAcceptableOrUnknown(
              data['bathtub_bath']!, _bathtubBathMeta));
    } else if (isInserting) {
      context.missing(_bathtubBathMeta);
    }
    if (data.containsKey('acupuncture')) {
      context.handle(
          _acupunctureMeta,
          acupuncture.isAcceptableOrUnknown(
              data['acupuncture']!, _acupunctureMeta));
    } else if (isInserting) {
      context.missing(_acupunctureMeta);
    }
    if (data.containsKey('acupressure')) {
      context.handle(
          _acupressureMeta,
          acupressure.isAcceptableOrUnknown(
              data['acupressure']!, _acupressureMeta));
    } else if (isInserting) {
      context.missing(_acupressureMeta);
    }
    if (data.containsKey('other_method')) {
      context.handle(
          _otherMethodMeta,
          otherMethod.isAcceptableOrUnknown(
              data['other_method']!, _otherMethodMeta));
    } else if (isInserting) {
      context.missing(_otherMethodMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PainReliefData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PainReliefData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      painRelief: $PainReliefTable.$converterpainRelief.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}pain_relief'])!),
      massage: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}massage'])!,
      ballExercises: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}ball_exercises'])!,
      breathRelaxExercises: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}breath_relax_exercises'])!,
      showerBath: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}shower_bath'])!,
      bathtubBath: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}bathtub_bath'])!,
      acupuncture: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}acupuncture'])!,
      acupressure: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}acupressure'])!,
      otherMethod: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}other_method'])!,
    );
  }

  @override
  $PainReliefTable createAlias(String alias) {
    return $PainReliefTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<NeedPainRelief, int, int> $converterpainRelief =
      const EnumIndexConverter<NeedPainRelief>(NeedPainRelief.values);
}

class PainReliefData extends DataClass implements Insertable<PainReliefData> {
  final int id;
  final NeedPainRelief painRelief;
  final bool massage;
  final bool ballExercises;
  final bool breathRelaxExercises;
  final bool showerBath;
  final bool bathtubBath;
  final bool acupuncture;
  final bool acupressure;
  final bool otherMethod;
  const PainReliefData(
      {required this.id,
      required this.painRelief,
      required this.massage,
      required this.ballExercises,
      required this.breathRelaxExercises,
      required this.showerBath,
      required this.bathtubBath,
      required this.acupuncture,
      required this.acupressure,
      required this.otherMethod});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    {
      map['pain_relief'] = Variable<int>(
          $PainReliefTable.$converterpainRelief.toSql(painRelief));
    }
    map['massage'] = Variable<bool>(massage);
    map['ball_exercises'] = Variable<bool>(ballExercises);
    map['breath_relax_exercises'] = Variable<bool>(breathRelaxExercises);
    map['shower_bath'] = Variable<bool>(showerBath);
    map['bathtub_bath'] = Variable<bool>(bathtubBath);
    map['acupuncture'] = Variable<bool>(acupuncture);
    map['acupressure'] = Variable<bool>(acupressure);
    map['other_method'] = Variable<bool>(otherMethod);
    return map;
  }

  PainReliefCompanion toCompanion(bool nullToAbsent) {
    return PainReliefCompanion(
      id: Value(id),
      painRelief: Value(painRelief),
      massage: Value(massage),
      ballExercises: Value(ballExercises),
      breathRelaxExercises: Value(breathRelaxExercises),
      showerBath: Value(showerBath),
      bathtubBath: Value(bathtubBath),
      acupuncture: Value(acupuncture),
      acupressure: Value(acupressure),
      otherMethod: Value(otherMethod),
    );
  }

  factory PainReliefData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PainReliefData(
      id: serializer.fromJson<int>(json['id']),
      painRelief: $PainReliefTable.$converterpainRelief
          .fromJson(serializer.fromJson<int>(json['painRelief'])),
      massage: serializer.fromJson<bool>(json['massage']),
      ballExercises: serializer.fromJson<bool>(json['ballExercises']),
      breathRelaxExercises:
          serializer.fromJson<bool>(json['breathRelaxExercises']),
      showerBath: serializer.fromJson<bool>(json['showerBath']),
      bathtubBath: serializer.fromJson<bool>(json['bathtubBath']),
      acupuncture: serializer.fromJson<bool>(json['acupuncture']),
      acupressure: serializer.fromJson<bool>(json['acupressure']),
      otherMethod: serializer.fromJson<bool>(json['otherMethod']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'painRelief': serializer.toJson<int>(
          $PainReliefTable.$converterpainRelief.toJson(painRelief)),
      'massage': serializer.toJson<bool>(massage),
      'ballExercises': serializer.toJson<bool>(ballExercises),
      'breathRelaxExercises': serializer.toJson<bool>(breathRelaxExercises),
      'showerBath': serializer.toJson<bool>(showerBath),
      'bathtubBath': serializer.toJson<bool>(bathtubBath),
      'acupuncture': serializer.toJson<bool>(acupuncture),
      'acupressure': serializer.toJson<bool>(acupressure),
      'otherMethod': serializer.toJson<bool>(otherMethod),
    };
  }

  PainReliefData copyWith(
          {int? id,
          NeedPainRelief? painRelief,
          bool? massage,
          bool? ballExercises,
          bool? breathRelaxExercises,
          bool? showerBath,
          bool? bathtubBath,
          bool? acupuncture,
          bool? acupressure,
          bool? otherMethod}) =>
      PainReliefData(
        id: id ?? this.id,
        painRelief: painRelief ?? this.painRelief,
        massage: massage ?? this.massage,
        ballExercises: ballExercises ?? this.ballExercises,
        breathRelaxExercises: breathRelaxExercises ?? this.breathRelaxExercises,
        showerBath: showerBath ?? this.showerBath,
        bathtubBath: bathtubBath ?? this.bathtubBath,
        acupuncture: acupuncture ?? this.acupuncture,
        acupressure: acupressure ?? this.acupressure,
        otherMethod: otherMethod ?? this.otherMethod,
      );
  PainReliefData copyWithCompanion(PainReliefCompanion data) {
    return PainReliefData(
      id: data.id.present ? data.id.value : this.id,
      painRelief:
          data.painRelief.present ? data.painRelief.value : this.painRelief,
      massage: data.massage.present ? data.massage.value : this.massage,
      ballExercises: data.ballExercises.present
          ? data.ballExercises.value
          : this.ballExercises,
      breathRelaxExercises: data.breathRelaxExercises.present
          ? data.breathRelaxExercises.value
          : this.breathRelaxExercises,
      showerBath:
          data.showerBath.present ? data.showerBath.value : this.showerBath,
      bathtubBath:
          data.bathtubBath.present ? data.bathtubBath.value : this.bathtubBath,
      acupuncture:
          data.acupuncture.present ? data.acupuncture.value : this.acupuncture,
      acupressure:
          data.acupressure.present ? data.acupressure.value : this.acupressure,
      otherMethod:
          data.otherMethod.present ? data.otherMethod.value : this.otherMethod,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PainReliefData(')
          ..write('id: $id, ')
          ..write('painRelief: $painRelief, ')
          ..write('massage: $massage, ')
          ..write('ballExercises: $ballExercises, ')
          ..write('breathRelaxExercises: $breathRelaxExercises, ')
          ..write('showerBath: $showerBath, ')
          ..write('bathtubBath: $bathtubBath, ')
          ..write('acupuncture: $acupuncture, ')
          ..write('acupressure: $acupressure, ')
          ..write('otherMethod: $otherMethod')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      painRelief,
      massage,
      ballExercises,
      breathRelaxExercises,
      showerBath,
      bathtubBath,
      acupuncture,
      acupressure,
      otherMethod);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PainReliefData &&
          other.id == this.id &&
          other.painRelief == this.painRelief &&
          other.massage == this.massage &&
          other.ballExercises == this.ballExercises &&
          other.breathRelaxExercises == this.breathRelaxExercises &&
          other.showerBath == this.showerBath &&
          other.bathtubBath == this.bathtubBath &&
          other.acupuncture == this.acupuncture &&
          other.acupressure == this.acupressure &&
          other.otherMethod == this.otherMethod);
}

class PainReliefCompanion extends UpdateCompanion<PainReliefData> {
  final Value<int> id;
  final Value<NeedPainRelief> painRelief;
  final Value<bool> massage;
  final Value<bool> ballExercises;
  final Value<bool> breathRelaxExercises;
  final Value<bool> showerBath;
  final Value<bool> bathtubBath;
  final Value<bool> acupuncture;
  final Value<bool> acupressure;
  final Value<bool> otherMethod;
  const PainReliefCompanion({
    this.id = const Value.absent(),
    this.painRelief = const Value.absent(),
    this.massage = const Value.absent(),
    this.ballExercises = const Value.absent(),
    this.breathRelaxExercises = const Value.absent(),
    this.showerBath = const Value.absent(),
    this.bathtubBath = const Value.absent(),
    this.acupuncture = const Value.absent(),
    this.acupressure = const Value.absent(),
    this.otherMethod = const Value.absent(),
  });
  PainReliefCompanion.insert({
    this.id = const Value.absent(),
    required NeedPainRelief painRelief,
    required bool massage,
    required bool ballExercises,
    required bool breathRelaxExercises,
    required bool showerBath,
    required bool bathtubBath,
    required bool acupuncture,
    required bool acupressure,
    required bool otherMethod,
  })  : painRelief = Value(painRelief),
        massage = Value(massage),
        ballExercises = Value(ballExercises),
        breathRelaxExercises = Value(breathRelaxExercises),
        showerBath = Value(showerBath),
        bathtubBath = Value(bathtubBath),
        acupuncture = Value(acupuncture),
        acupressure = Value(acupressure),
        otherMethod = Value(otherMethod);
  static Insertable<PainReliefData> custom({
    Expression<int>? id,
    Expression<int>? painRelief,
    Expression<bool>? massage,
    Expression<bool>? ballExercises,
    Expression<bool>? breathRelaxExercises,
    Expression<bool>? showerBath,
    Expression<bool>? bathtubBath,
    Expression<bool>? acupuncture,
    Expression<bool>? acupressure,
    Expression<bool>? otherMethod,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (painRelief != null) 'pain_relief': painRelief,
      if (massage != null) 'massage': massage,
      if (ballExercises != null) 'ball_exercises': ballExercises,
      if (breathRelaxExercises != null)
        'breath_relax_exercises': breathRelaxExercises,
      if (showerBath != null) 'shower_bath': showerBath,
      if (bathtubBath != null) 'bathtub_bath': bathtubBath,
      if (acupuncture != null) 'acupuncture': acupuncture,
      if (acupressure != null) 'acupressure': acupressure,
      if (otherMethod != null) 'other_method': otherMethod,
    });
  }

  PainReliefCompanion copyWith(
      {Value<int>? id,
      Value<NeedPainRelief>? painRelief,
      Value<bool>? massage,
      Value<bool>? ballExercises,
      Value<bool>? breathRelaxExercises,
      Value<bool>? showerBath,
      Value<bool>? bathtubBath,
      Value<bool>? acupuncture,
      Value<bool>? acupressure,
      Value<bool>? otherMethod}) {
    return PainReliefCompanion(
      id: id ?? this.id,
      painRelief: painRelief ?? this.painRelief,
      massage: massage ?? this.massage,
      ballExercises: ballExercises ?? this.ballExercises,
      breathRelaxExercises: breathRelaxExercises ?? this.breathRelaxExercises,
      showerBath: showerBath ?? this.showerBath,
      bathtubBath: bathtubBath ?? this.bathtubBath,
      acupuncture: acupuncture ?? this.acupuncture,
      acupressure: acupressure ?? this.acupressure,
      otherMethod: otherMethod ?? this.otherMethod,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (painRelief.present) {
      map['pain_relief'] = Variable<int>(
          $PainReliefTable.$converterpainRelief.toSql(painRelief.value));
    }
    if (massage.present) {
      map['massage'] = Variable<bool>(massage.value);
    }
    if (ballExercises.present) {
      map['ball_exercises'] = Variable<bool>(ballExercises.value);
    }
    if (breathRelaxExercises.present) {
      map['breath_relax_exercises'] =
          Variable<bool>(breathRelaxExercises.value);
    }
    if (showerBath.present) {
      map['shower_bath'] = Variable<bool>(showerBath.value);
    }
    if (bathtubBath.present) {
      map['bathtub_bath'] = Variable<bool>(bathtubBath.value);
    }
    if (acupuncture.present) {
      map['acupuncture'] = Variable<bool>(acupuncture.value);
    }
    if (acupressure.present) {
      map['acupressure'] = Variable<bool>(acupressure.value);
    }
    if (otherMethod.present) {
      map['other_method'] = Variable<bool>(otherMethod.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PainReliefCompanion(')
          ..write('id: $id, ')
          ..write('painRelief: $painRelief, ')
          ..write('massage: $massage, ')
          ..write('ballExercises: $ballExercises, ')
          ..write('breathRelaxExercises: $breathRelaxExercises, ')
          ..write('showerBath: $showerBath, ')
          ..write('bathtubBath: $bathtubBath, ')
          ..write('acupuncture: $acupuncture, ')
          ..write('acupressure: $acupressure, ')
          ..write('otherMethod: $otherMethod')
          ..write(')'))
        .toString();
  }
}

class $PreviousPregnanciesTable extends PreviousPregnancies
    with TableInfo<$PreviousPregnanciesTable, PreviousPregnancy> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PreviousPregnanciesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _pregnancyNumberMeta =
      const VerificationMeta('pregnancyNumber');
  @override
  late final GeneratedColumn<int> pregnancyNumber = GeneratedColumn<int>(
      'pregnancy_number', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _givenBirthNumberMeta =
      const VerificationMeta('givenBirthNumber');
  @override
  late final GeneratedColumn<int> givenBirthNumber = GeneratedColumn<int>(
      'given_birth_number', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _abortionsNumberMeta =
      const VerificationMeta('abortionsNumber');
  @override
  late final GeneratedColumn<int> abortionsNumber = GeneratedColumn<int>(
      'abortions_number', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, pregnancyNumber, givenBirthNumber, abortionsNumber];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'previous_pregnancies';
  @override
  VerificationContext validateIntegrity(Insertable<PreviousPregnancy> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('pregnancy_number')) {
      context.handle(
          _pregnancyNumberMeta,
          pregnancyNumber.isAcceptableOrUnknown(
              data['pregnancy_number']!, _pregnancyNumberMeta));
    }
    if (data.containsKey('given_birth_number')) {
      context.handle(
          _givenBirthNumberMeta,
          givenBirthNumber.isAcceptableOrUnknown(
              data['given_birth_number']!, _givenBirthNumberMeta));
    }
    if (data.containsKey('abortions_number')) {
      context.handle(
          _abortionsNumberMeta,
          abortionsNumber.isAcceptableOrUnknown(
              data['abortions_number']!, _abortionsNumberMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PreviousPregnancy map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PreviousPregnancy(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      pregnancyNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}pregnancy_number']),
      givenBirthNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}given_birth_number']),
      abortionsNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}abortions_number']),
    );
  }

  @override
  $PreviousPregnanciesTable createAlias(String alias) {
    return $PreviousPregnanciesTable(attachedDatabase, alias);
  }
}

class PreviousPregnancy extends DataClass
    implements Insertable<PreviousPregnancy> {
  final int id;
  final int? pregnancyNumber;
  final int? givenBirthNumber;
  final int? abortionsNumber;
  const PreviousPregnancy(
      {required this.id,
      this.pregnancyNumber,
      this.givenBirthNumber,
      this.abortionsNumber});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || pregnancyNumber != null) {
      map['pregnancy_number'] = Variable<int>(pregnancyNumber);
    }
    if (!nullToAbsent || givenBirthNumber != null) {
      map['given_birth_number'] = Variable<int>(givenBirthNumber);
    }
    if (!nullToAbsent || abortionsNumber != null) {
      map['abortions_number'] = Variable<int>(abortionsNumber);
    }
    return map;
  }

  PreviousPregnanciesCompanion toCompanion(bool nullToAbsent) {
    return PreviousPregnanciesCompanion(
      id: Value(id),
      pregnancyNumber: pregnancyNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(pregnancyNumber),
      givenBirthNumber: givenBirthNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(givenBirthNumber),
      abortionsNumber: abortionsNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(abortionsNumber),
    );
  }

  factory PreviousPregnancy.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PreviousPregnancy(
      id: serializer.fromJson<int>(json['id']),
      pregnancyNumber: serializer.fromJson<int?>(json['pregnancyNumber']),
      givenBirthNumber: serializer.fromJson<int?>(json['givenBirthNumber']),
      abortionsNumber: serializer.fromJson<int?>(json['abortionsNumber']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'pregnancyNumber': serializer.toJson<int?>(pregnancyNumber),
      'givenBirthNumber': serializer.toJson<int?>(givenBirthNumber),
      'abortionsNumber': serializer.toJson<int?>(abortionsNumber),
    };
  }

  PreviousPregnancy copyWith(
          {int? id,
          Value<int?> pregnancyNumber = const Value.absent(),
          Value<int?> givenBirthNumber = const Value.absent(),
          Value<int?> abortionsNumber = const Value.absent()}) =>
      PreviousPregnancy(
        id: id ?? this.id,
        pregnancyNumber: pregnancyNumber.present
            ? pregnancyNumber.value
            : this.pregnancyNumber,
        givenBirthNumber: givenBirthNumber.present
            ? givenBirthNumber.value
            : this.givenBirthNumber,
        abortionsNumber: abortionsNumber.present
            ? abortionsNumber.value
            : this.abortionsNumber,
      );
  PreviousPregnancy copyWithCompanion(PreviousPregnanciesCompanion data) {
    return PreviousPregnancy(
      id: data.id.present ? data.id.value : this.id,
      pregnancyNumber: data.pregnancyNumber.present
          ? data.pregnancyNumber.value
          : this.pregnancyNumber,
      givenBirthNumber: data.givenBirthNumber.present
          ? data.givenBirthNumber.value
          : this.givenBirthNumber,
      abortionsNumber: data.abortionsNumber.present
          ? data.abortionsNumber.value
          : this.abortionsNumber,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PreviousPregnancy(')
          ..write('id: $id, ')
          ..write('pregnancyNumber: $pregnancyNumber, ')
          ..write('givenBirthNumber: $givenBirthNumber, ')
          ..write('abortionsNumber: $abortionsNumber')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, pregnancyNumber, givenBirthNumber, abortionsNumber);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PreviousPregnancy &&
          other.id == this.id &&
          other.pregnancyNumber == this.pregnancyNumber &&
          other.givenBirthNumber == this.givenBirthNumber &&
          other.abortionsNumber == this.abortionsNumber);
}

class PreviousPregnanciesCompanion extends UpdateCompanion<PreviousPregnancy> {
  final Value<int> id;
  final Value<int?> pregnancyNumber;
  final Value<int?> givenBirthNumber;
  final Value<int?> abortionsNumber;
  const PreviousPregnanciesCompanion({
    this.id = const Value.absent(),
    this.pregnancyNumber = const Value.absent(),
    this.givenBirthNumber = const Value.absent(),
    this.abortionsNumber = const Value.absent(),
  });
  PreviousPregnanciesCompanion.insert({
    this.id = const Value.absent(),
    this.pregnancyNumber = const Value.absent(),
    this.givenBirthNumber = const Value.absent(),
    this.abortionsNumber = const Value.absent(),
  });
  static Insertable<PreviousPregnancy> custom({
    Expression<int>? id,
    Expression<int>? pregnancyNumber,
    Expression<int>? givenBirthNumber,
    Expression<int>? abortionsNumber,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (pregnancyNumber != null) 'pregnancy_number': pregnancyNumber,
      if (givenBirthNumber != null) 'given_birth_number': givenBirthNumber,
      if (abortionsNumber != null) 'abortions_number': abortionsNumber,
    });
  }

  PreviousPregnanciesCompanion copyWith(
      {Value<int>? id,
      Value<int?>? pregnancyNumber,
      Value<int?>? givenBirthNumber,
      Value<int?>? abortionsNumber}) {
    return PreviousPregnanciesCompanion(
      id: id ?? this.id,
      pregnancyNumber: pregnancyNumber ?? this.pregnancyNumber,
      givenBirthNumber: givenBirthNumber ?? this.givenBirthNumber,
      abortionsNumber: abortionsNumber ?? this.abortionsNumber,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (pregnancyNumber.present) {
      map['pregnancy_number'] = Variable<int>(pregnancyNumber.value);
    }
    if (givenBirthNumber.present) {
      map['given_birth_number'] = Variable<int>(givenBirthNumber.value);
    }
    if (abortionsNumber.present) {
      map['abortions_number'] = Variable<int>(abortionsNumber.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PreviousPregnanciesCompanion(')
          ..write('id: $id, ')
          ..write('pregnancyNumber: $pregnancyNumber, ')
          ..write('givenBirthNumber: $givenBirthNumber, ')
          ..write('abortionsNumber: $abortionsNumber')
          ..write(')'))
        .toString();
  }
}

class $BabyDataTable extends BabyData
    with TableInfo<$BabyDataTable, BabyDataData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BabyDataTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _birthDateMeta =
      const VerificationMeta('birthDate');
  @override
  late final GeneratedColumn<DateTime> birthDate = GeneratedColumn<DateTime>(
      'birth_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _birthTimeMeta =
      const VerificationMeta('birthTime');
  @override
  late final GeneratedColumn<DateTime> birthTime = GeneratedColumn<DateTime>(
      'birth_time', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _babySexMeta =
      const VerificationMeta('babySex');
  @override
  late final GeneratedColumnWithTypeConverter<BabySex, int> babySex =
      GeneratedColumn<int>('baby_sex', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<BabySex>($BabyDataTable.$converterbabySex);
  static const VerificationMeta _weekGestationAgeMeta =
      const VerificationMeta('weekGestationAge');
  @override
  late final GeneratedColumn<int> weekGestationAge = GeneratedColumn<int>(
      'week_gestation_age', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _dayGestationAgeMeta =
      const VerificationMeta('dayGestationAge');
  @override
  late final GeneratedColumn<int> dayGestationAge = GeneratedColumn<int>(
      'day_gestation_age', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _weightMeta = const VerificationMeta('weight');
  @override
  late final GeneratedColumn<double> weight = GeneratedColumn<double>(
      'weight', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _heightMeta = const VerificationMeta('height');
  @override
  late final GeneratedColumn<double> height = GeneratedColumn<double>(
      'height', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _headCircumferenceMeta =
      const VerificationMeta('headCircumference');
  @override
  late final GeneratedColumn<double> headCircumference =
      GeneratedColumn<double>('head_circumference', aliasedName, false,
          type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _firstMinuteApgarMeta =
      const VerificationMeta('firstMinuteApgar');
  @override
  late final GeneratedColumn<int> firstMinuteApgar = GeneratedColumn<int>(
      'first_minute_apgar', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _fifthMinuteApgarMeta =
      const VerificationMeta('fifthMinuteApgar');
  @override
  late final GeneratedColumn<int> fifthMinuteApgar = GeneratedColumn<int>(
      'fifth_minute_apgar', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _birthTypeMeta =
      const VerificationMeta('birthType');
  @override
  late final GeneratedColumnWithTypeConverter<BirthType, int> birthType =
      GeneratedColumn<int>('birth_type', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<BirthType>($BabyDataTable.$converterbirthType);
  static const VerificationMeta _instrumentedBirthMeta =
      const VerificationMeta('instrumentedBirth');
  @override
  late final GeneratedColumn<bool> instrumentedBirth = GeneratedColumn<bool>(
      'instrumented_birth', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("instrumented_birth" IN (0, 1))'));
  static const VerificationMeta _inducedLaborMeta =
      const VerificationMeta('inducedLabor');
  @override
  late final GeneratedColumn<bool> inducedLabor = GeneratedColumn<bool>(
      'induced_labor', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("induced_labor" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        birthDate,
        birthTime,
        babySex,
        weekGestationAge,
        dayGestationAge,
        weight,
        height,
        headCircumference,
        firstMinuteApgar,
        fifthMinuteApgar,
        birthType,
        instrumentedBirth,
        inducedLabor
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'baby_data';
  @override
  VerificationContext validateIntegrity(Insertable<BabyDataData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('birth_date')) {
      context.handle(_birthDateMeta,
          birthDate.isAcceptableOrUnknown(data['birth_date']!, _birthDateMeta));
    } else if (isInserting) {
      context.missing(_birthDateMeta);
    }
    if (data.containsKey('birth_time')) {
      context.handle(_birthTimeMeta,
          birthTime.isAcceptableOrUnknown(data['birth_time']!, _birthTimeMeta));
    } else if (isInserting) {
      context.missing(_birthTimeMeta);
    }
    context.handle(_babySexMeta, const VerificationResult.success());
    if (data.containsKey('week_gestation_age')) {
      context.handle(
          _weekGestationAgeMeta,
          weekGestationAge.isAcceptableOrUnknown(
              data['week_gestation_age']!, _weekGestationAgeMeta));
    } else if (isInserting) {
      context.missing(_weekGestationAgeMeta);
    }
    if (data.containsKey('day_gestation_age')) {
      context.handle(
          _dayGestationAgeMeta,
          dayGestationAge.isAcceptableOrUnknown(
              data['day_gestation_age']!, _dayGestationAgeMeta));
    } else if (isInserting) {
      context.missing(_dayGestationAgeMeta);
    }
    if (data.containsKey('weight')) {
      context.handle(_weightMeta,
          weight.isAcceptableOrUnknown(data['weight']!, _weightMeta));
    } else if (isInserting) {
      context.missing(_weightMeta);
    }
    if (data.containsKey('height')) {
      context.handle(_heightMeta,
          height.isAcceptableOrUnknown(data['height']!, _heightMeta));
    } else if (isInserting) {
      context.missing(_heightMeta);
    }
    if (data.containsKey('head_circumference')) {
      context.handle(
          _headCircumferenceMeta,
          headCircumference.isAcceptableOrUnknown(
              data['head_circumference']!, _headCircumferenceMeta));
    } else if (isInserting) {
      context.missing(_headCircumferenceMeta);
    }
    if (data.containsKey('first_minute_apgar')) {
      context.handle(
          _firstMinuteApgarMeta,
          firstMinuteApgar.isAcceptableOrUnknown(
              data['first_minute_apgar']!, _firstMinuteApgarMeta));
    } else if (isInserting) {
      context.missing(_firstMinuteApgarMeta);
    }
    if (data.containsKey('fifth_minute_apgar')) {
      context.handle(
          _fifthMinuteApgarMeta,
          fifthMinuteApgar.isAcceptableOrUnknown(
              data['fifth_minute_apgar']!, _fifthMinuteApgarMeta));
    } else if (isInserting) {
      context.missing(_fifthMinuteApgarMeta);
    }
    context.handle(_birthTypeMeta, const VerificationResult.success());
    if (data.containsKey('instrumented_birth')) {
      context.handle(
          _instrumentedBirthMeta,
          instrumentedBirth.isAcceptableOrUnknown(
              data['instrumented_birth']!, _instrumentedBirthMeta));
    } else if (isInserting) {
      context.missing(_instrumentedBirthMeta);
    }
    if (data.containsKey('induced_labor')) {
      context.handle(
          _inducedLaborMeta,
          inducedLabor.isAcceptableOrUnknown(
              data['induced_labor']!, _inducedLaborMeta));
    } else if (isInserting) {
      context.missing(_inducedLaborMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  BabyDataData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BabyDataData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      birthDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}birth_date'])!,
      birthTime: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}birth_time'])!,
      babySex: $BabyDataTable.$converterbabySex.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}baby_sex'])!),
      weekGestationAge: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}week_gestation_age'])!,
      dayGestationAge: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}day_gestation_age'])!,
      weight: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}weight'])!,
      height: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}height'])!,
      headCircumference: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}head_circumference'])!,
      firstMinuteApgar: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}first_minute_apgar'])!,
      fifthMinuteApgar: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}fifth_minute_apgar'])!,
      birthType: $BabyDataTable.$converterbirthType.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}birth_type'])!),
      instrumentedBirth: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}instrumented_birth'])!,
      inducedLabor: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}induced_labor'])!,
    );
  }

  @override
  $BabyDataTable createAlias(String alias) {
    return $BabyDataTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<BabySex, int, int> $converterbabySex =
      const EnumIndexConverter<BabySex>(BabySex.values);
  static JsonTypeConverter2<BirthType, int, int> $converterbirthType =
      const EnumIndexConverter<BirthType>(BirthType.values);
}

class BabyDataData extends DataClass implements Insertable<BabyDataData> {
  final int id;
  final String name;
  final DateTime birthDate;
  final DateTime birthTime;
  final BabySex babySex;
  final int weekGestationAge;
  final int dayGestationAge;
  final double weight;
  final double height;
  final double headCircumference;
  final int firstMinuteApgar;
  final int fifthMinuteApgar;
  final BirthType birthType;
  final bool instrumentedBirth;
  final bool inducedLabor;
  const BabyDataData(
      {required this.id,
      required this.name,
      required this.birthDate,
      required this.birthTime,
      required this.babySex,
      required this.weekGestationAge,
      required this.dayGestationAge,
      required this.weight,
      required this.height,
      required this.headCircumference,
      required this.firstMinuteApgar,
      required this.fifthMinuteApgar,
      required this.birthType,
      required this.instrumentedBirth,
      required this.inducedLabor});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['birth_date'] = Variable<DateTime>(birthDate);
    map['birth_time'] = Variable<DateTime>(birthTime);
    {
      map['baby_sex'] =
          Variable<int>($BabyDataTable.$converterbabySex.toSql(babySex));
    }
    map['week_gestation_age'] = Variable<int>(weekGestationAge);
    map['day_gestation_age'] = Variable<int>(dayGestationAge);
    map['weight'] = Variable<double>(weight);
    map['height'] = Variable<double>(height);
    map['head_circumference'] = Variable<double>(headCircumference);
    map['first_minute_apgar'] = Variable<int>(firstMinuteApgar);
    map['fifth_minute_apgar'] = Variable<int>(fifthMinuteApgar);
    {
      map['birth_type'] =
          Variable<int>($BabyDataTable.$converterbirthType.toSql(birthType));
    }
    map['instrumented_birth'] = Variable<bool>(instrumentedBirth);
    map['induced_labor'] = Variable<bool>(inducedLabor);
    return map;
  }

  BabyDataCompanion toCompanion(bool nullToAbsent) {
    return BabyDataCompanion(
      id: Value(id),
      name: Value(name),
      birthDate: Value(birthDate),
      birthTime: Value(birthTime),
      babySex: Value(babySex),
      weekGestationAge: Value(weekGestationAge),
      dayGestationAge: Value(dayGestationAge),
      weight: Value(weight),
      height: Value(height),
      headCircumference: Value(headCircumference),
      firstMinuteApgar: Value(firstMinuteApgar),
      fifthMinuteApgar: Value(fifthMinuteApgar),
      birthType: Value(birthType),
      instrumentedBirth: Value(instrumentedBirth),
      inducedLabor: Value(inducedLabor),
    );
  }

  factory BabyDataData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BabyDataData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      birthDate: serializer.fromJson<DateTime>(json['birthDate']),
      birthTime: serializer.fromJson<DateTime>(json['birthTime']),
      babySex: $BabyDataTable.$converterbabySex
          .fromJson(serializer.fromJson<int>(json['babySex'])),
      weekGestationAge: serializer.fromJson<int>(json['weekGestationAge']),
      dayGestationAge: serializer.fromJson<int>(json['dayGestationAge']),
      weight: serializer.fromJson<double>(json['weight']),
      height: serializer.fromJson<double>(json['height']),
      headCircumference: serializer.fromJson<double>(json['headCircumference']),
      firstMinuteApgar: serializer.fromJson<int>(json['firstMinuteApgar']),
      fifthMinuteApgar: serializer.fromJson<int>(json['fifthMinuteApgar']),
      birthType: $BabyDataTable.$converterbirthType
          .fromJson(serializer.fromJson<int>(json['birthType'])),
      instrumentedBirth: serializer.fromJson<bool>(json['instrumentedBirth']),
      inducedLabor: serializer.fromJson<bool>(json['inducedLabor']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'birthDate': serializer.toJson<DateTime>(birthDate),
      'birthTime': serializer.toJson<DateTime>(birthTime),
      'babySex': serializer
          .toJson<int>($BabyDataTable.$converterbabySex.toJson(babySex)),
      'weekGestationAge': serializer.toJson<int>(weekGestationAge),
      'dayGestationAge': serializer.toJson<int>(dayGestationAge),
      'weight': serializer.toJson<double>(weight),
      'height': serializer.toJson<double>(height),
      'headCircumference': serializer.toJson<double>(headCircumference),
      'firstMinuteApgar': serializer.toJson<int>(firstMinuteApgar),
      'fifthMinuteApgar': serializer.toJson<int>(fifthMinuteApgar),
      'birthType': serializer
          .toJson<int>($BabyDataTable.$converterbirthType.toJson(birthType)),
      'instrumentedBirth': serializer.toJson<bool>(instrumentedBirth),
      'inducedLabor': serializer.toJson<bool>(inducedLabor),
    };
  }

  BabyDataData copyWith(
          {int? id,
          String? name,
          DateTime? birthDate,
          DateTime? birthTime,
          BabySex? babySex,
          int? weekGestationAge,
          int? dayGestationAge,
          double? weight,
          double? height,
          double? headCircumference,
          int? firstMinuteApgar,
          int? fifthMinuteApgar,
          BirthType? birthType,
          bool? instrumentedBirth,
          bool? inducedLabor}) =>
      BabyDataData(
        id: id ?? this.id,
        name: name ?? this.name,
        birthDate: birthDate ?? this.birthDate,
        birthTime: birthTime ?? this.birthTime,
        babySex: babySex ?? this.babySex,
        weekGestationAge: weekGestationAge ?? this.weekGestationAge,
        dayGestationAge: dayGestationAge ?? this.dayGestationAge,
        weight: weight ?? this.weight,
        height: height ?? this.height,
        headCircumference: headCircumference ?? this.headCircumference,
        firstMinuteApgar: firstMinuteApgar ?? this.firstMinuteApgar,
        fifthMinuteApgar: fifthMinuteApgar ?? this.fifthMinuteApgar,
        birthType: birthType ?? this.birthType,
        instrumentedBirth: instrumentedBirth ?? this.instrumentedBirth,
        inducedLabor: inducedLabor ?? this.inducedLabor,
      );
  BabyDataData copyWithCompanion(BabyDataCompanion data) {
    return BabyDataData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      birthDate: data.birthDate.present ? data.birthDate.value : this.birthDate,
      birthTime: data.birthTime.present ? data.birthTime.value : this.birthTime,
      babySex: data.babySex.present ? data.babySex.value : this.babySex,
      weekGestationAge: data.weekGestationAge.present
          ? data.weekGestationAge.value
          : this.weekGestationAge,
      dayGestationAge: data.dayGestationAge.present
          ? data.dayGestationAge.value
          : this.dayGestationAge,
      weight: data.weight.present ? data.weight.value : this.weight,
      height: data.height.present ? data.height.value : this.height,
      headCircumference: data.headCircumference.present
          ? data.headCircumference.value
          : this.headCircumference,
      firstMinuteApgar: data.firstMinuteApgar.present
          ? data.firstMinuteApgar.value
          : this.firstMinuteApgar,
      fifthMinuteApgar: data.fifthMinuteApgar.present
          ? data.fifthMinuteApgar.value
          : this.fifthMinuteApgar,
      birthType: data.birthType.present ? data.birthType.value : this.birthType,
      instrumentedBirth: data.instrumentedBirth.present
          ? data.instrumentedBirth.value
          : this.instrumentedBirth,
      inducedLabor: data.inducedLabor.present
          ? data.inducedLabor.value
          : this.inducedLabor,
    );
  }

  @override
  String toString() {
    return (StringBuffer('BabyDataData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('birthDate: $birthDate, ')
          ..write('birthTime: $birthTime, ')
          ..write('babySex: $babySex, ')
          ..write('weekGestationAge: $weekGestationAge, ')
          ..write('dayGestationAge: $dayGestationAge, ')
          ..write('weight: $weight, ')
          ..write('height: $height, ')
          ..write('headCircumference: $headCircumference, ')
          ..write('firstMinuteApgar: $firstMinuteApgar, ')
          ..write('fifthMinuteApgar: $fifthMinuteApgar, ')
          ..write('birthType: $birthType, ')
          ..write('instrumentedBirth: $instrumentedBirth, ')
          ..write('inducedLabor: $inducedLabor')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      name,
      birthDate,
      birthTime,
      babySex,
      weekGestationAge,
      dayGestationAge,
      weight,
      height,
      headCircumference,
      firstMinuteApgar,
      fifthMinuteApgar,
      birthType,
      instrumentedBirth,
      inducedLabor);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BabyDataData &&
          other.id == this.id &&
          other.name == this.name &&
          other.birthDate == this.birthDate &&
          other.birthTime == this.birthTime &&
          other.babySex == this.babySex &&
          other.weekGestationAge == this.weekGestationAge &&
          other.dayGestationAge == this.dayGestationAge &&
          other.weight == this.weight &&
          other.height == this.height &&
          other.headCircumference == this.headCircumference &&
          other.firstMinuteApgar == this.firstMinuteApgar &&
          other.fifthMinuteApgar == this.fifthMinuteApgar &&
          other.birthType == this.birthType &&
          other.instrumentedBirth == this.instrumentedBirth &&
          other.inducedLabor == this.inducedLabor);
}

class BabyDataCompanion extends UpdateCompanion<BabyDataData> {
  final Value<int> id;
  final Value<String> name;
  final Value<DateTime> birthDate;
  final Value<DateTime> birthTime;
  final Value<BabySex> babySex;
  final Value<int> weekGestationAge;
  final Value<int> dayGestationAge;
  final Value<double> weight;
  final Value<double> height;
  final Value<double> headCircumference;
  final Value<int> firstMinuteApgar;
  final Value<int> fifthMinuteApgar;
  final Value<BirthType> birthType;
  final Value<bool> instrumentedBirth;
  final Value<bool> inducedLabor;
  const BabyDataCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.birthDate = const Value.absent(),
    this.birthTime = const Value.absent(),
    this.babySex = const Value.absent(),
    this.weekGestationAge = const Value.absent(),
    this.dayGestationAge = const Value.absent(),
    this.weight = const Value.absent(),
    this.height = const Value.absent(),
    this.headCircumference = const Value.absent(),
    this.firstMinuteApgar = const Value.absent(),
    this.fifthMinuteApgar = const Value.absent(),
    this.birthType = const Value.absent(),
    this.instrumentedBirth = const Value.absent(),
    this.inducedLabor = const Value.absent(),
  });
  BabyDataCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required DateTime birthDate,
    required DateTime birthTime,
    required BabySex babySex,
    required int weekGestationAge,
    required int dayGestationAge,
    required double weight,
    required double height,
    required double headCircumference,
    required int firstMinuteApgar,
    required int fifthMinuteApgar,
    required BirthType birthType,
    required bool instrumentedBirth,
    required bool inducedLabor,
  })  : name = Value(name),
        birthDate = Value(birthDate),
        birthTime = Value(birthTime),
        babySex = Value(babySex),
        weekGestationAge = Value(weekGestationAge),
        dayGestationAge = Value(dayGestationAge),
        weight = Value(weight),
        height = Value(height),
        headCircumference = Value(headCircumference),
        firstMinuteApgar = Value(firstMinuteApgar),
        fifthMinuteApgar = Value(fifthMinuteApgar),
        birthType = Value(birthType),
        instrumentedBirth = Value(instrumentedBirth),
        inducedLabor = Value(inducedLabor);
  static Insertable<BabyDataData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<DateTime>? birthDate,
    Expression<DateTime>? birthTime,
    Expression<int>? babySex,
    Expression<int>? weekGestationAge,
    Expression<int>? dayGestationAge,
    Expression<double>? weight,
    Expression<double>? height,
    Expression<double>? headCircumference,
    Expression<int>? firstMinuteApgar,
    Expression<int>? fifthMinuteApgar,
    Expression<int>? birthType,
    Expression<bool>? instrumentedBirth,
    Expression<bool>? inducedLabor,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (birthDate != null) 'birth_date': birthDate,
      if (birthTime != null) 'birth_time': birthTime,
      if (babySex != null) 'baby_sex': babySex,
      if (weekGestationAge != null) 'week_gestation_age': weekGestationAge,
      if (dayGestationAge != null) 'day_gestation_age': dayGestationAge,
      if (weight != null) 'weight': weight,
      if (height != null) 'height': height,
      if (headCircumference != null) 'head_circumference': headCircumference,
      if (firstMinuteApgar != null) 'first_minute_apgar': firstMinuteApgar,
      if (fifthMinuteApgar != null) 'fifth_minute_apgar': fifthMinuteApgar,
      if (birthType != null) 'birth_type': birthType,
      if (instrumentedBirth != null) 'instrumented_birth': instrumentedBirth,
      if (inducedLabor != null) 'induced_labor': inducedLabor,
    });
  }

  BabyDataCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<DateTime>? birthDate,
      Value<DateTime>? birthTime,
      Value<BabySex>? babySex,
      Value<int>? weekGestationAge,
      Value<int>? dayGestationAge,
      Value<double>? weight,
      Value<double>? height,
      Value<double>? headCircumference,
      Value<int>? firstMinuteApgar,
      Value<int>? fifthMinuteApgar,
      Value<BirthType>? birthType,
      Value<bool>? instrumentedBirth,
      Value<bool>? inducedLabor}) {
    return BabyDataCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      birthDate: birthDate ?? this.birthDate,
      birthTime: birthTime ?? this.birthTime,
      babySex: babySex ?? this.babySex,
      weekGestationAge: weekGestationAge ?? this.weekGestationAge,
      dayGestationAge: dayGestationAge ?? this.dayGestationAge,
      weight: weight ?? this.weight,
      height: height ?? this.height,
      headCircumference: headCircumference ?? this.headCircumference,
      firstMinuteApgar: firstMinuteApgar ?? this.firstMinuteApgar,
      fifthMinuteApgar: fifthMinuteApgar ?? this.fifthMinuteApgar,
      birthType: birthType ?? this.birthType,
      instrumentedBirth: instrumentedBirth ?? this.instrumentedBirth,
      inducedLabor: inducedLabor ?? this.inducedLabor,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (birthDate.present) {
      map['birth_date'] = Variable<DateTime>(birthDate.value);
    }
    if (birthTime.present) {
      map['birth_time'] = Variable<DateTime>(birthTime.value);
    }
    if (babySex.present) {
      map['baby_sex'] =
          Variable<int>($BabyDataTable.$converterbabySex.toSql(babySex.value));
    }
    if (weekGestationAge.present) {
      map['week_gestation_age'] = Variable<int>(weekGestationAge.value);
    }
    if (dayGestationAge.present) {
      map['day_gestation_age'] = Variable<int>(dayGestationAge.value);
    }
    if (weight.present) {
      map['weight'] = Variable<double>(weight.value);
    }
    if (height.present) {
      map['height'] = Variable<double>(height.value);
    }
    if (headCircumference.present) {
      map['head_circumference'] = Variable<double>(headCircumference.value);
    }
    if (firstMinuteApgar.present) {
      map['first_minute_apgar'] = Variable<int>(firstMinuteApgar.value);
    }
    if (fifthMinuteApgar.present) {
      map['fifth_minute_apgar'] = Variable<int>(fifthMinuteApgar.value);
    }
    if (birthType.present) {
      map['birth_type'] = Variable<int>(
          $BabyDataTable.$converterbirthType.toSql(birthType.value));
    }
    if (instrumentedBirth.present) {
      map['instrumented_birth'] = Variable<bool>(instrumentedBirth.value);
    }
    if (inducedLabor.present) {
      map['induced_labor'] = Variable<bool>(inducedLabor.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BabyDataCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('birthDate: $birthDate, ')
          ..write('birthTime: $birthTime, ')
          ..write('babySex: $babySex, ')
          ..write('weekGestationAge: $weekGestationAge, ')
          ..write('dayGestationAge: $dayGestationAge, ')
          ..write('weight: $weight, ')
          ..write('height: $height, ')
          ..write('headCircumference: $headCircumference, ')
          ..write('firstMinuteApgar: $firstMinuteApgar, ')
          ..write('fifthMinuteApgar: $fifthMinuteApgar, ')
          ..write('birthType: $birthType, ')
          ..write('instrumentedBirth: $instrumentedBirth, ')
          ..write('inducedLabor: $inducedLabor')
          ..write(')'))
        .toString();
  }
}

class $MaternityTable extends Maternity
    with TableInfo<$MaternityTable, MaternityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MaternityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _shareDataMeta =
      const VerificationMeta('shareData');
  @override
  late final GeneratedColumn<bool> shareData = GeneratedColumn<bool>(
      'share_data', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("share_data" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns => [id, name, shareData];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'maternity';
  @override
  VerificationContext validateIntegrity(Insertable<MaternityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('share_data')) {
      context.handle(_shareDataMeta,
          shareData.isAcceptableOrUnknown(data['share_data']!, _shareDataMeta));
    } else if (isInserting) {
      context.missing(_shareDataMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MaternityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MaternityData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      shareData: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}share_data'])!,
    );
  }

  @override
  $MaternityTable createAlias(String alias) {
    return $MaternityTable(attachedDatabase, alias);
  }
}

class MaternityData extends DataClass implements Insertable<MaternityData> {
  final int id;
  final String name;
  final bool shareData;
  const MaternityData(
      {required this.id, required this.name, required this.shareData});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['share_data'] = Variable<bool>(shareData);
    return map;
  }

  MaternityCompanion toCompanion(bool nullToAbsent) {
    return MaternityCompanion(
      id: Value(id),
      name: Value(name),
      shareData: Value(shareData),
    );
  }

  factory MaternityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MaternityData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      shareData: serializer.fromJson<bool>(json['shareData']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'shareData': serializer.toJson<bool>(shareData),
    };
  }

  MaternityData copyWith({int? id, String? name, bool? shareData}) =>
      MaternityData(
        id: id ?? this.id,
        name: name ?? this.name,
        shareData: shareData ?? this.shareData,
      );
  MaternityData copyWithCompanion(MaternityCompanion data) {
    return MaternityData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      shareData: data.shareData.present ? data.shareData.value : this.shareData,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MaternityData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('shareData: $shareData')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, shareData);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MaternityData &&
          other.id == this.id &&
          other.name == this.name &&
          other.shareData == this.shareData);
}

class MaternityCompanion extends UpdateCompanion<MaternityData> {
  final Value<int> id;
  final Value<String> name;
  final Value<bool> shareData;
  const MaternityCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.shareData = const Value.absent(),
  });
  MaternityCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required bool shareData,
  })  : name = Value(name),
        shareData = Value(shareData);
  static Insertable<MaternityData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<bool>? shareData,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (shareData != null) 'share_data': shareData,
    });
  }

  MaternityCompanion copyWith(
      {Value<int>? id, Value<String>? name, Value<bool>? shareData}) {
    return MaternityCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      shareData: shareData ?? this.shareData,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (shareData.present) {
      map['share_data'] = Variable<bool>(shareData.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MaternityCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('shareData: $shareData')
          ..write(')'))
        .toString();
  }
}

class $PregnantTable extends Pregnant
    with TableInfo<$PregnantTable, PregnantData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PregnantTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _socialNameMeta =
      const VerificationMeta('socialName');
  @override
  late final GeneratedColumn<String> socialName = GeneratedColumn<String>(
      'social_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _birthDateMeta =
      const VerificationMeta('birthDate');
  @override
  late final GeneratedColumn<String> birthDate = GeneratedColumn<String>(
      'birth_date', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _cpfMeta = const VerificationMeta('cpf');
  @override
  late final GeneratedColumn<String> cpf = GeneratedColumn<String>(
      'cpf', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nationalHealthCardNumberMeta =
      const VerificationMeta('nationalHealthCardNumber');
  @override
  late final GeneratedColumn<String> nationalHealthCardNumber =
      GeneratedColumn<String>('national_health_card_number', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _preNatalPlaceMeta =
      const VerificationMeta('preNatalPlace');
  @override
  late final GeneratedColumn<String> preNatalPlace = GeneratedColumn<String>(
      'pre_natal_place', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _profissionalNameMeta =
      const VerificationMeta('profissionalName');
  @override
  late final GeneratedColumn<String> profissionalName = GeneratedColumn<String>(
      'profissional_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _prenatalPlaceContactMeta =
      const VerificationMeta('prenatalPlaceContact');
  @override
  late final GeneratedColumn<String> prenatalPlaceContact =
      GeneratedColumn<String>('prenatal_place_contact', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        socialName,
        birthDate,
        cpf,
        nationalHealthCardNumber,
        preNatalPlace,
        profissionalName,
        prenatalPlaceContact
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pregnant';
  @override
  VerificationContext validateIntegrity(Insertable<PregnantData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('social_name')) {
      context.handle(
          _socialNameMeta,
          socialName.isAcceptableOrUnknown(
              data['social_name']!, _socialNameMeta));
    }
    if (data.containsKey('birth_date')) {
      context.handle(_birthDateMeta,
          birthDate.isAcceptableOrUnknown(data['birth_date']!, _birthDateMeta));
    } else if (isInserting) {
      context.missing(_birthDateMeta);
    }
    if (data.containsKey('cpf')) {
      context.handle(
          _cpfMeta, cpf.isAcceptableOrUnknown(data['cpf']!, _cpfMeta));
    } else if (isInserting) {
      context.missing(_cpfMeta);
    }
    if (data.containsKey('national_health_card_number')) {
      context.handle(
          _nationalHealthCardNumberMeta,
          nationalHealthCardNumber.isAcceptableOrUnknown(
              data['national_health_card_number']!,
              _nationalHealthCardNumberMeta));
    }
    if (data.containsKey('pre_natal_place')) {
      context.handle(
          _preNatalPlaceMeta,
          preNatalPlace.isAcceptableOrUnknown(
              data['pre_natal_place']!, _preNatalPlaceMeta));
    }
    if (data.containsKey('profissional_name')) {
      context.handle(
          _profissionalNameMeta,
          profissionalName.isAcceptableOrUnknown(
              data['profissional_name']!, _profissionalNameMeta));
    }
    if (data.containsKey('prenatal_place_contact')) {
      context.handle(
          _prenatalPlaceContactMeta,
          prenatalPlaceContact.isAcceptableOrUnknown(
              data['prenatal_place_contact']!, _prenatalPlaceContactMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PregnantData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PregnantData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      socialName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}social_name']),
      birthDate: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}birth_date'])!,
      cpf: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cpf'])!,
      nationalHealthCardNumber: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}national_health_card_number']),
      preNatalPlace: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}pre_natal_place']),
      profissionalName: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}profissional_name']),
      prenatalPlaceContact: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}prenatal_place_contact']),
    );
  }

  @override
  $PregnantTable createAlias(String alias) {
    return $PregnantTable(attachedDatabase, alias);
  }
}

class PregnantData extends DataClass implements Insertable<PregnantData> {
  final int id;
  final String name;
  final String? socialName;
  final String birthDate;
  final String cpf;
  final String? nationalHealthCardNumber;
  final String? preNatalPlace;
  final String? profissionalName;
  final String? prenatalPlaceContact;
  const PregnantData(
      {required this.id,
      required this.name,
      this.socialName,
      required this.birthDate,
      required this.cpf,
      this.nationalHealthCardNumber,
      this.preNatalPlace,
      this.profissionalName,
      this.prenatalPlaceContact});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || socialName != null) {
      map['social_name'] = Variable<String>(socialName);
    }
    map['birth_date'] = Variable<String>(birthDate);
    map['cpf'] = Variable<String>(cpf);
    if (!nullToAbsent || nationalHealthCardNumber != null) {
      map['national_health_card_number'] =
          Variable<String>(nationalHealthCardNumber);
    }
    if (!nullToAbsent || preNatalPlace != null) {
      map['pre_natal_place'] = Variable<String>(preNatalPlace);
    }
    if (!nullToAbsent || profissionalName != null) {
      map['profissional_name'] = Variable<String>(profissionalName);
    }
    if (!nullToAbsent || prenatalPlaceContact != null) {
      map['prenatal_place_contact'] = Variable<String>(prenatalPlaceContact);
    }
    return map;
  }

  PregnantCompanion toCompanion(bool nullToAbsent) {
    return PregnantCompanion(
      id: Value(id),
      name: Value(name),
      socialName: socialName == null && nullToAbsent
          ? const Value.absent()
          : Value(socialName),
      birthDate: Value(birthDate),
      cpf: Value(cpf),
      nationalHealthCardNumber: nationalHealthCardNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(nationalHealthCardNumber),
      preNatalPlace: preNatalPlace == null && nullToAbsent
          ? const Value.absent()
          : Value(preNatalPlace),
      profissionalName: profissionalName == null && nullToAbsent
          ? const Value.absent()
          : Value(profissionalName),
      prenatalPlaceContact: prenatalPlaceContact == null && nullToAbsent
          ? const Value.absent()
          : Value(prenatalPlaceContact),
    );
  }

  factory PregnantData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PregnantData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      socialName: serializer.fromJson<String?>(json['socialName']),
      birthDate: serializer.fromJson<String>(json['birthDate']),
      cpf: serializer.fromJson<String>(json['cpf']),
      nationalHealthCardNumber:
          serializer.fromJson<String?>(json['nationalHealthCardNumber']),
      preNatalPlace: serializer.fromJson<String?>(json['preNatalPlace']),
      profissionalName: serializer.fromJson<String?>(json['profissionalName']),
      prenatalPlaceContact:
          serializer.fromJson<String?>(json['prenatalPlaceContact']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'socialName': serializer.toJson<String?>(socialName),
      'birthDate': serializer.toJson<String>(birthDate),
      'cpf': serializer.toJson<String>(cpf),
      'nationalHealthCardNumber':
          serializer.toJson<String?>(nationalHealthCardNumber),
      'preNatalPlace': serializer.toJson<String?>(preNatalPlace),
      'profissionalName': serializer.toJson<String?>(profissionalName),
      'prenatalPlaceContact': serializer.toJson<String?>(prenatalPlaceContact),
    };
  }

  PregnantData copyWith(
          {int? id,
          String? name,
          Value<String?> socialName = const Value.absent(),
          String? birthDate,
          String? cpf,
          Value<String?> nationalHealthCardNumber = const Value.absent(),
          Value<String?> preNatalPlace = const Value.absent(),
          Value<String?> profissionalName = const Value.absent(),
          Value<String?> prenatalPlaceContact = const Value.absent()}) =>
      PregnantData(
        id: id ?? this.id,
        name: name ?? this.name,
        socialName: socialName.present ? socialName.value : this.socialName,
        birthDate: birthDate ?? this.birthDate,
        cpf: cpf ?? this.cpf,
        nationalHealthCardNumber: nationalHealthCardNumber.present
            ? nationalHealthCardNumber.value
            : this.nationalHealthCardNumber,
        preNatalPlace:
            preNatalPlace.present ? preNatalPlace.value : this.preNatalPlace,
        profissionalName: profissionalName.present
            ? profissionalName.value
            : this.profissionalName,
        prenatalPlaceContact: prenatalPlaceContact.present
            ? prenatalPlaceContact.value
            : this.prenatalPlaceContact,
      );
  PregnantData copyWithCompanion(PregnantCompanion data) {
    return PregnantData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      socialName:
          data.socialName.present ? data.socialName.value : this.socialName,
      birthDate: data.birthDate.present ? data.birthDate.value : this.birthDate,
      cpf: data.cpf.present ? data.cpf.value : this.cpf,
      nationalHealthCardNumber: data.nationalHealthCardNumber.present
          ? data.nationalHealthCardNumber.value
          : this.nationalHealthCardNumber,
      preNatalPlace: data.preNatalPlace.present
          ? data.preNatalPlace.value
          : this.preNatalPlace,
      profissionalName: data.profissionalName.present
          ? data.profissionalName.value
          : this.profissionalName,
      prenatalPlaceContact: data.prenatalPlaceContact.present
          ? data.prenatalPlaceContact.value
          : this.prenatalPlaceContact,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PregnantData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('socialName: $socialName, ')
          ..write('birthDate: $birthDate, ')
          ..write('cpf: $cpf, ')
          ..write('nationalHealthCardNumber: $nationalHealthCardNumber, ')
          ..write('preNatalPlace: $preNatalPlace, ')
          ..write('profissionalName: $profissionalName, ')
          ..write('prenatalPlaceContact: $prenatalPlaceContact')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      name,
      socialName,
      birthDate,
      cpf,
      nationalHealthCardNumber,
      preNatalPlace,
      profissionalName,
      prenatalPlaceContact);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PregnantData &&
          other.id == this.id &&
          other.name == this.name &&
          other.socialName == this.socialName &&
          other.birthDate == this.birthDate &&
          other.cpf == this.cpf &&
          other.nationalHealthCardNumber == this.nationalHealthCardNumber &&
          other.preNatalPlace == this.preNatalPlace &&
          other.profissionalName == this.profissionalName &&
          other.prenatalPlaceContact == this.prenatalPlaceContact);
}

class PregnantCompanion extends UpdateCompanion<PregnantData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String?> socialName;
  final Value<String> birthDate;
  final Value<String> cpf;
  final Value<String?> nationalHealthCardNumber;
  final Value<String?> preNatalPlace;
  final Value<String?> profissionalName;
  final Value<String?> prenatalPlaceContact;
  const PregnantCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.socialName = const Value.absent(),
    this.birthDate = const Value.absent(),
    this.cpf = const Value.absent(),
    this.nationalHealthCardNumber = const Value.absent(),
    this.preNatalPlace = const Value.absent(),
    this.profissionalName = const Value.absent(),
    this.prenatalPlaceContact = const Value.absent(),
  });
  PregnantCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.socialName = const Value.absent(),
    required String birthDate,
    required String cpf,
    this.nationalHealthCardNumber = const Value.absent(),
    this.preNatalPlace = const Value.absent(),
    this.profissionalName = const Value.absent(),
    this.prenatalPlaceContact = const Value.absent(),
  })  : name = Value(name),
        birthDate = Value(birthDate),
        cpf = Value(cpf);
  static Insertable<PregnantData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? socialName,
    Expression<String>? birthDate,
    Expression<String>? cpf,
    Expression<String>? nationalHealthCardNumber,
    Expression<String>? preNatalPlace,
    Expression<String>? profissionalName,
    Expression<String>? prenatalPlaceContact,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (socialName != null) 'social_name': socialName,
      if (birthDate != null) 'birth_date': birthDate,
      if (cpf != null) 'cpf': cpf,
      if (nationalHealthCardNumber != null)
        'national_health_card_number': nationalHealthCardNumber,
      if (preNatalPlace != null) 'pre_natal_place': preNatalPlace,
      if (profissionalName != null) 'profissional_name': profissionalName,
      if (prenatalPlaceContact != null)
        'prenatal_place_contact': prenatalPlaceContact,
    });
  }

  PregnantCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String?>? socialName,
      Value<String>? birthDate,
      Value<String>? cpf,
      Value<String?>? nationalHealthCardNumber,
      Value<String?>? preNatalPlace,
      Value<String?>? profissionalName,
      Value<String?>? prenatalPlaceContact}) {
    return PregnantCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      socialName: socialName ?? this.socialName,
      birthDate: birthDate ?? this.birthDate,
      cpf: cpf ?? this.cpf,
      nationalHealthCardNumber:
          nationalHealthCardNumber ?? this.nationalHealthCardNumber,
      preNatalPlace: preNatalPlace ?? this.preNatalPlace,
      profissionalName: profissionalName ?? this.profissionalName,
      prenatalPlaceContact: prenatalPlaceContact ?? this.prenatalPlaceContact,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (socialName.present) {
      map['social_name'] = Variable<String>(socialName.value);
    }
    if (birthDate.present) {
      map['birth_date'] = Variable<String>(birthDate.value);
    }
    if (cpf.present) {
      map['cpf'] = Variable<String>(cpf.value);
    }
    if (nationalHealthCardNumber.present) {
      map['national_health_card_number'] =
          Variable<String>(nationalHealthCardNumber.value);
    }
    if (preNatalPlace.present) {
      map['pre_natal_place'] = Variable<String>(preNatalPlace.value);
    }
    if (profissionalName.present) {
      map['profissional_name'] = Variable<String>(profissionalName.value);
    }
    if (prenatalPlaceContact.present) {
      map['prenatal_place_contact'] =
          Variable<String>(prenatalPlaceContact.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PregnantCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('socialName: $socialName, ')
          ..write('birthDate: $birthDate, ')
          ..write('cpf: $cpf, ')
          ..write('nationalHealthCardNumber: $nationalHealthCardNumber, ')
          ..write('preNatalPlace: $preNatalPlace, ')
          ..write('profissionalName: $profissionalName, ')
          ..write('prenatalPlaceContact: $prenatalPlaceContact')
          ..write(')'))
        .toString();
  }
}

class $PrenatalAppointmentTable extends PrenatalAppointment
    with TableInfo<$PrenatalAppointmentTable, PrenatalAppointmentData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PrenatalAppointmentTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _appointmentDateMeta =
      const VerificationMeta('appointmentDate');
  @override
  late final GeneratedColumn<DateTime> appointmentDate =
      GeneratedColumn<DateTime>('appointment_date', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _observationsMeta =
      const VerificationMeta('observations');
  @override
  late final GeneratedColumn<String> observations = GeneratedColumn<String>(
      'observations', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, appointmentDate, observations];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'prenatal_appointment';
  @override
  VerificationContext validateIntegrity(
      Insertable<PrenatalAppointmentData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('appointment_date')) {
      context.handle(
          _appointmentDateMeta,
          appointmentDate.isAcceptableOrUnknown(
              data['appointment_date']!, _appointmentDateMeta));
    } else if (isInserting) {
      context.missing(_appointmentDateMeta);
    }
    if (data.containsKey('observations')) {
      context.handle(
          _observationsMeta,
          observations.isAcceptableOrUnknown(
              data['observations']!, _observationsMeta));
    } else if (isInserting) {
      context.missing(_observationsMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PrenatalAppointmentData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PrenatalAppointmentData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      appointmentDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}appointment_date'])!,
      observations: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}observations'])!,
    );
  }

  @override
  $PrenatalAppointmentTable createAlias(String alias) {
    return $PrenatalAppointmentTable(attachedDatabase, alias);
  }
}

class PrenatalAppointmentData extends DataClass
    implements Insertable<PrenatalAppointmentData> {
  final int id;
  final DateTime appointmentDate;
  final String observations;
  const PrenatalAppointmentData(
      {required this.id,
      required this.appointmentDate,
      required this.observations});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['appointment_date'] = Variable<DateTime>(appointmentDate);
    map['observations'] = Variable<String>(observations);
    return map;
  }

  PrenatalAppointmentCompanion toCompanion(bool nullToAbsent) {
    return PrenatalAppointmentCompanion(
      id: Value(id),
      appointmentDate: Value(appointmentDate),
      observations: Value(observations),
    );
  }

  factory PrenatalAppointmentData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PrenatalAppointmentData(
      id: serializer.fromJson<int>(json['id']),
      appointmentDate: serializer.fromJson<DateTime>(json['appointmentDate']),
      observations: serializer.fromJson<String>(json['observations']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'appointmentDate': serializer.toJson<DateTime>(appointmentDate),
      'observations': serializer.toJson<String>(observations),
    };
  }

  PrenatalAppointmentData copyWith(
          {int? id, DateTime? appointmentDate, String? observations}) =>
      PrenatalAppointmentData(
        id: id ?? this.id,
        appointmentDate: appointmentDate ?? this.appointmentDate,
        observations: observations ?? this.observations,
      );
  PrenatalAppointmentData copyWithCompanion(PrenatalAppointmentCompanion data) {
    return PrenatalAppointmentData(
      id: data.id.present ? data.id.value : this.id,
      appointmentDate: data.appointmentDate.present
          ? data.appointmentDate.value
          : this.appointmentDate,
      observations: data.observations.present
          ? data.observations.value
          : this.observations,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PrenatalAppointmentData(')
          ..write('id: $id, ')
          ..write('appointmentDate: $appointmentDate, ')
          ..write('observations: $observations')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, appointmentDate, observations);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PrenatalAppointmentData &&
          other.id == this.id &&
          other.appointmentDate == this.appointmentDate &&
          other.observations == this.observations);
}

class PrenatalAppointmentCompanion
    extends UpdateCompanion<PrenatalAppointmentData> {
  final Value<int> id;
  final Value<DateTime> appointmentDate;
  final Value<String> observations;
  const PrenatalAppointmentCompanion({
    this.id = const Value.absent(),
    this.appointmentDate = const Value.absent(),
    this.observations = const Value.absent(),
  });
  PrenatalAppointmentCompanion.insert({
    this.id = const Value.absent(),
    required DateTime appointmentDate,
    required String observations,
  })  : appointmentDate = Value(appointmentDate),
        observations = Value(observations);
  static Insertable<PrenatalAppointmentData> custom({
    Expression<int>? id,
    Expression<DateTime>? appointmentDate,
    Expression<String>? observations,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (appointmentDate != null) 'appointment_date': appointmentDate,
      if (observations != null) 'observations': observations,
    });
  }

  PrenatalAppointmentCompanion copyWith(
      {Value<int>? id,
      Value<DateTime>? appointmentDate,
      Value<String>? observations}) {
    return PrenatalAppointmentCompanion(
      id: id ?? this.id,
      appointmentDate: appointmentDate ?? this.appointmentDate,
      observations: observations ?? this.observations,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (appointmentDate.present) {
      map['appointment_date'] = Variable<DateTime>(appointmentDate.value);
    }
    if (observations.present) {
      map['observations'] = Variable<String>(observations.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PrenatalAppointmentCompanion(')
          ..write('id: $id, ')
          ..write('appointmentDate: $appointmentDate, ')
          ..write('observations: $observations')
          ..write(')'))
        .toString();
  }
}

class $UserTable extends User with TableInfo<$UserTable, UserData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _maritalStatusMeta =
      const VerificationMeta('maritalStatus');
  @override
  late final GeneratedColumnWithTypeConverter<MaritalStatus?, int>
      maritalStatus = GeneratedColumn<int>('marital_status', aliasedName, true,
              type: DriftSqlType.int, requiredDuringInsert: false)
          .withConverter<MaritalStatus?>($UserTable.$convertermaritalStatusn);
  static const VerificationMeta _educationMeta =
      const VerificationMeta('education');
  @override
  late final GeneratedColumnWithTypeConverter<Education?, int> education =
      GeneratedColumn<int>('education', aliasedName, true,
              type: DriftSqlType.int, requiredDuringInsert: false)
          .withConverter<Education?>($UserTable.$convertereducationn);
  static const VerificationMeta _familyIncomeMeta =
      const VerificationMeta('familyIncome');
  @override
  late final GeneratedColumnWithTypeConverter<FamilyIncome?, int> familyIncome =
      GeneratedColumn<int>('family_income', aliasedName, true,
              type: DriftSqlType.int, requiredDuringInsert: false)
          .withConverter<FamilyIncome?>($UserTable.$converterfamilyIncomen);
  @override
  List<GeneratedColumn> get $columns =>
      [id, email, maritalStatus, education, familyIncome];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user';
  @override
  VerificationContext validateIntegrity(Insertable<UserData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    context.handle(_maritalStatusMeta, const VerificationResult.success());
    context.handle(_educationMeta, const VerificationResult.success());
    context.handle(_familyIncomeMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email'])!,
      maritalStatus: $UserTable.$convertermaritalStatusn.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.int, data['${effectivePrefix}marital_status'])),
      education: $UserTable.$convertereducationn.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}education'])),
      familyIncome: $UserTable.$converterfamilyIncomen.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}family_income'])),
    );
  }

  @override
  $UserTable createAlias(String alias) {
    return $UserTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<MaritalStatus, int, int> $convertermaritalStatus =
      const EnumIndexConverter<MaritalStatus>(MaritalStatus.values);
  static JsonTypeConverter2<MaritalStatus?, int?, int?>
      $convertermaritalStatusn =
      JsonTypeConverter2.asNullable($convertermaritalStatus);
  static JsonTypeConverter2<Education, int, int> $convertereducation =
      const EnumIndexConverter<Education>(Education.values);
  static JsonTypeConverter2<Education?, int?, int?> $convertereducationn =
      JsonTypeConverter2.asNullable($convertereducation);
  static JsonTypeConverter2<FamilyIncome, int, int> $converterfamilyIncome =
      const EnumIndexConverter<FamilyIncome>(FamilyIncome.values);
  static JsonTypeConverter2<FamilyIncome?, int?, int?> $converterfamilyIncomen =
      JsonTypeConverter2.asNullable($converterfamilyIncome);
}

class UserData extends DataClass implements Insertable<UserData> {
  final int id;
  final String email;
  final MaritalStatus? maritalStatus;
  final Education? education;
  final FamilyIncome? familyIncome;
  const UserData(
      {required this.id,
      required this.email,
      this.maritalStatus,
      this.education,
      this.familyIncome});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['email'] = Variable<String>(email);
    if (!nullToAbsent || maritalStatus != null) {
      map['marital_status'] = Variable<int>(
          $UserTable.$convertermaritalStatusn.toSql(maritalStatus));
    }
    if (!nullToAbsent || education != null) {
      map['education'] =
          Variable<int>($UserTable.$convertereducationn.toSql(education));
    }
    if (!nullToAbsent || familyIncome != null) {
      map['family_income'] =
          Variable<int>($UserTable.$converterfamilyIncomen.toSql(familyIncome));
    }
    return map;
  }

  UserCompanion toCompanion(bool nullToAbsent) {
    return UserCompanion(
      id: Value(id),
      email: Value(email),
      maritalStatus: maritalStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(maritalStatus),
      education: education == null && nullToAbsent
          ? const Value.absent()
          : Value(education),
      familyIncome: familyIncome == null && nullToAbsent
          ? const Value.absent()
          : Value(familyIncome),
    );
  }

  factory UserData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserData(
      id: serializer.fromJson<int>(json['id']),
      email: serializer.fromJson<String>(json['email']),
      maritalStatus: $UserTable.$convertermaritalStatusn
          .fromJson(serializer.fromJson<int?>(json['maritalStatus'])),
      education: $UserTable.$convertereducationn
          .fromJson(serializer.fromJson<int?>(json['education'])),
      familyIncome: $UserTable.$converterfamilyIncomen
          .fromJson(serializer.fromJson<int?>(json['familyIncome'])),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'email': serializer.toJson<String>(email),
      'maritalStatus': serializer.toJson<int?>(
          $UserTable.$convertermaritalStatusn.toJson(maritalStatus)),
      'education': serializer
          .toJson<int?>($UserTable.$convertereducationn.toJson(education)),
      'familyIncome': serializer.toJson<int?>(
          $UserTable.$converterfamilyIncomen.toJson(familyIncome)),
    };
  }

  UserData copyWith(
          {int? id,
          String? email,
          Value<MaritalStatus?> maritalStatus = const Value.absent(),
          Value<Education?> education = const Value.absent(),
          Value<FamilyIncome?> familyIncome = const Value.absent()}) =>
      UserData(
        id: id ?? this.id,
        email: email ?? this.email,
        maritalStatus:
            maritalStatus.present ? maritalStatus.value : this.maritalStatus,
        education: education.present ? education.value : this.education,
        familyIncome:
            familyIncome.present ? familyIncome.value : this.familyIncome,
      );
  UserData copyWithCompanion(UserCompanion data) {
    return UserData(
      id: data.id.present ? data.id.value : this.id,
      email: data.email.present ? data.email.value : this.email,
      maritalStatus: data.maritalStatus.present
          ? data.maritalStatus.value
          : this.maritalStatus,
      education: data.education.present ? data.education.value : this.education,
      familyIncome: data.familyIncome.present
          ? data.familyIncome.value
          : this.familyIncome,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UserData(')
          ..write('id: $id, ')
          ..write('email: $email, ')
          ..write('maritalStatus: $maritalStatus, ')
          ..write('education: $education, ')
          ..write('familyIncome: $familyIncome')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, email, maritalStatus, education, familyIncome);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserData &&
          other.id == this.id &&
          other.email == this.email &&
          other.maritalStatus == this.maritalStatus &&
          other.education == this.education &&
          other.familyIncome == this.familyIncome);
}

class UserCompanion extends UpdateCompanion<UserData> {
  final Value<int> id;
  final Value<String> email;
  final Value<MaritalStatus?> maritalStatus;
  final Value<Education?> education;
  final Value<FamilyIncome?> familyIncome;
  const UserCompanion({
    this.id = const Value.absent(),
    this.email = const Value.absent(),
    this.maritalStatus = const Value.absent(),
    this.education = const Value.absent(),
    this.familyIncome = const Value.absent(),
  });
  UserCompanion.insert({
    this.id = const Value.absent(),
    required String email,
    this.maritalStatus = const Value.absent(),
    this.education = const Value.absent(),
    this.familyIncome = const Value.absent(),
  }) : email = Value(email);
  static Insertable<UserData> custom({
    Expression<int>? id,
    Expression<String>? email,
    Expression<int>? maritalStatus,
    Expression<int>? education,
    Expression<int>? familyIncome,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (email != null) 'email': email,
      if (maritalStatus != null) 'marital_status': maritalStatus,
      if (education != null) 'education': education,
      if (familyIncome != null) 'family_income': familyIncome,
    });
  }

  UserCompanion copyWith(
      {Value<int>? id,
      Value<String>? email,
      Value<MaritalStatus?>? maritalStatus,
      Value<Education?>? education,
      Value<FamilyIncome?>? familyIncome}) {
    return UserCompanion(
      id: id ?? this.id,
      email: email ?? this.email,
      maritalStatus: maritalStatus ?? this.maritalStatus,
      education: education ?? this.education,
      familyIncome: familyIncome ?? this.familyIncome,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (maritalStatus.present) {
      map['marital_status'] = Variable<int>(
          $UserTable.$convertermaritalStatusn.toSql(maritalStatus.value));
    }
    if (education.present) {
      map['education'] =
          Variable<int>($UserTable.$convertereducationn.toSql(education.value));
    }
    if (familyIncome.present) {
      map['family_income'] = Variable<int>(
          $UserTable.$converterfamilyIncomen.toSql(familyIncome.value));
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserCompanion(')
          ..write('id: $id, ')
          ..write('email: $email, ')
          ..write('maritalStatus: $maritalStatus, ')
          ..write('education: $education, ')
          ..write('familyIncome: $familyIncome')
          ..write(')'))
        .toString();
  }
}

class $AppointmentsTable extends Appointments
    with TableInfo<$AppointmentsTable, Appointment> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AppointmentsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _appointmentDateMeta =
      const VerificationMeta('appointmentDate');
  @override
  late final GeneratedColumn<String> appointmentDate = GeneratedColumn<String>(
      'appointment_date', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, title, appointmentDate, description];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'appointments';
  @override
  VerificationContext validateIntegrity(Insertable<Appointment> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('appointment_date')) {
      context.handle(
          _appointmentDateMeta,
          appointmentDate.isAcceptableOrUnknown(
              data['appointment_date']!, _appointmentDateMeta));
    } else if (isInserting) {
      context.missing(_appointmentDateMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Appointment map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Appointment(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      appointmentDate: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}appointment_date'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
    );
  }

  @override
  $AppointmentsTable createAlias(String alias) {
    return $AppointmentsTable(attachedDatabase, alias);
  }
}

class Appointment extends DataClass implements Insertable<Appointment> {
  final int id;
  final String title;
  final String appointmentDate;
  final String description;
  const Appointment(
      {required this.id,
      required this.title,
      required this.appointmentDate,
      required this.description});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['appointment_date'] = Variable<String>(appointmentDate);
    map['description'] = Variable<String>(description);
    return map;
  }

  AppointmentsCompanion toCompanion(bool nullToAbsent) {
    return AppointmentsCompanion(
      id: Value(id),
      title: Value(title),
      appointmentDate: Value(appointmentDate),
      description: Value(description),
    );
  }

  factory Appointment.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Appointment(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      appointmentDate: serializer.fromJson<String>(json['appointmentDate']),
      description: serializer.fromJson<String>(json['description']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'appointmentDate': serializer.toJson<String>(appointmentDate),
      'description': serializer.toJson<String>(description),
    };
  }

  Appointment copyWith(
          {int? id,
          String? title,
          String? appointmentDate,
          String? description}) =>
      Appointment(
        id: id ?? this.id,
        title: title ?? this.title,
        appointmentDate: appointmentDate ?? this.appointmentDate,
        description: description ?? this.description,
      );
  Appointment copyWithCompanion(AppointmentsCompanion data) {
    return Appointment(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      appointmentDate: data.appointmentDate.present
          ? data.appointmentDate.value
          : this.appointmentDate,
      description:
          data.description.present ? data.description.value : this.description,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Appointment(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('appointmentDate: $appointmentDate, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title, appointmentDate, description);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Appointment &&
          other.id == this.id &&
          other.title == this.title &&
          other.appointmentDate == this.appointmentDate &&
          other.description == this.description);
}

class AppointmentsCompanion extends UpdateCompanion<Appointment> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> appointmentDate;
  final Value<String> description;
  const AppointmentsCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.appointmentDate = const Value.absent(),
    this.description = const Value.absent(),
  });
  AppointmentsCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required String appointmentDate,
    required String description,
  })  : title = Value(title),
        appointmentDate = Value(appointmentDate),
        description = Value(description);
  static Insertable<Appointment> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? appointmentDate,
    Expression<String>? description,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (appointmentDate != null) 'appointment_date': appointmentDate,
      if (description != null) 'description': description,
    });
  }

  AppointmentsCompanion copyWith(
      {Value<int>? id,
      Value<String>? title,
      Value<String>? appointmentDate,
      Value<String>? description}) {
    return AppointmentsCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      appointmentDate: appointmentDate ?? this.appointmentDate,
      description: description ?? this.description,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (appointmentDate.present) {
      map['appointment_date'] = Variable<String>(appointmentDate.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AppointmentsCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('appointmentDate: $appointmentDate, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }
}

class $ExamsTable extends Exams with TableInfo<$ExamsTable, Exam> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ExamsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _examDateMeta =
      const VerificationMeta('examDate');
  @override
  late final GeneratedColumn<String> examDate = GeneratedColumn<String>(
      'exam_date', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, title, examDate, description];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'exams';
  @override
  VerificationContext validateIntegrity(Insertable<Exam> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('exam_date')) {
      context.handle(_examDateMeta,
          examDate.isAcceptableOrUnknown(data['exam_date']!, _examDateMeta));
    } else if (isInserting) {
      context.missing(_examDateMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Exam map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Exam(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      examDate: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}exam_date'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
    );
  }

  @override
  $ExamsTable createAlias(String alias) {
    return $ExamsTable(attachedDatabase, alias);
  }
}

class Exam extends DataClass implements Insertable<Exam> {
  final int id;
  final String title;
  final String examDate;
  final String description;
  const Exam(
      {required this.id,
      required this.title,
      required this.examDate,
      required this.description});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['exam_date'] = Variable<String>(examDate);
    map['description'] = Variable<String>(description);
    return map;
  }

  ExamsCompanion toCompanion(bool nullToAbsent) {
    return ExamsCompanion(
      id: Value(id),
      title: Value(title),
      examDate: Value(examDate),
      description: Value(description),
    );
  }

  factory Exam.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Exam(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      examDate: serializer.fromJson<String>(json['examDate']),
      description: serializer.fromJson<String>(json['description']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'examDate': serializer.toJson<String>(examDate),
      'description': serializer.toJson<String>(description),
    };
  }

  Exam copyWith(
          {int? id, String? title, String? examDate, String? description}) =>
      Exam(
        id: id ?? this.id,
        title: title ?? this.title,
        examDate: examDate ?? this.examDate,
        description: description ?? this.description,
      );
  Exam copyWithCompanion(ExamsCompanion data) {
    return Exam(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      examDate: data.examDate.present ? data.examDate.value : this.examDate,
      description:
          data.description.present ? data.description.value : this.description,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Exam(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('examDate: $examDate, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title, examDate, description);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Exam &&
          other.id == this.id &&
          other.title == this.title &&
          other.examDate == this.examDate &&
          other.description == this.description);
}

class ExamsCompanion extends UpdateCompanion<Exam> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> examDate;
  final Value<String> description;
  const ExamsCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.examDate = const Value.absent(),
    this.description = const Value.absent(),
  });
  ExamsCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required String examDate,
    required String description,
  })  : title = Value(title),
        examDate = Value(examDate),
        description = Value(description);
  static Insertable<Exam> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? examDate,
    Expression<String>? description,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (examDate != null) 'exam_date': examDate,
      if (description != null) 'description': description,
    });
  }

  ExamsCompanion copyWith(
      {Value<int>? id,
      Value<String>? title,
      Value<String>? examDate,
      Value<String>? description}) {
    return ExamsCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      examDate: examDate ?? this.examDate,
      description: description ?? this.description,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (examDate.present) {
      map['exam_date'] = Variable<String>(examDate.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExamsCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('examDate: $examDate, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }
}

class $MedicationsTable extends Medications
    with TableInfo<$MedicationsTable, Medication> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MedicationsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _doseMeta = const VerificationMeta('dose');
  @override
  late final GeneratedColumn<String> dose = GeneratedColumn<String>(
      'dose', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _medicationTimeMeta =
      const VerificationMeta('medicationTime');
  @override
  late final GeneratedColumn<String> medicationTime = GeneratedColumn<String>(
      'medication_time', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name, dose, medicationTime];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'medications';
  @override
  VerificationContext validateIntegrity(Insertable<Medication> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('dose')) {
      context.handle(
          _doseMeta, dose.isAcceptableOrUnknown(data['dose']!, _doseMeta));
    } else if (isInserting) {
      context.missing(_doseMeta);
    }
    if (data.containsKey('medication_time')) {
      context.handle(
          _medicationTimeMeta,
          medicationTime.isAcceptableOrUnknown(
              data['medication_time']!, _medicationTimeMeta));
    } else if (isInserting) {
      context.missing(_medicationTimeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Medication map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Medication(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      dose: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}dose'])!,
      medicationTime: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}medication_time'])!,
    );
  }

  @override
  $MedicationsTable createAlias(String alias) {
    return $MedicationsTable(attachedDatabase, alias);
  }
}

class Medication extends DataClass implements Insertable<Medication> {
  final int id;
  final String name;
  final String dose;
  final String medicationTime;
  const Medication(
      {required this.id,
      required this.name,
      required this.dose,
      required this.medicationTime});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['dose'] = Variable<String>(dose);
    map['medication_time'] = Variable<String>(medicationTime);
    return map;
  }

  MedicationsCompanion toCompanion(bool nullToAbsent) {
    return MedicationsCompanion(
      id: Value(id),
      name: Value(name),
      dose: Value(dose),
      medicationTime: Value(medicationTime),
    );
  }

  factory Medication.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Medication(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      dose: serializer.fromJson<String>(json['dose']),
      medicationTime: serializer.fromJson<String>(json['medicationTime']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'dose': serializer.toJson<String>(dose),
      'medicationTime': serializer.toJson<String>(medicationTime),
    };
  }

  Medication copyWith(
          {int? id, String? name, String? dose, String? medicationTime}) =>
      Medication(
        id: id ?? this.id,
        name: name ?? this.name,
        dose: dose ?? this.dose,
        medicationTime: medicationTime ?? this.medicationTime,
      );
  Medication copyWithCompanion(MedicationsCompanion data) {
    return Medication(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      dose: data.dose.present ? data.dose.value : this.dose,
      medicationTime: data.medicationTime.present
          ? data.medicationTime.value
          : this.medicationTime,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Medication(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('dose: $dose, ')
          ..write('medicationTime: $medicationTime')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, dose, medicationTime);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Medication &&
          other.id == this.id &&
          other.name == this.name &&
          other.dose == this.dose &&
          other.medicationTime == this.medicationTime);
}

class MedicationsCompanion extends UpdateCompanion<Medication> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> dose;
  final Value<String> medicationTime;
  const MedicationsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.dose = const Value.absent(),
    this.medicationTime = const Value.absent(),
  });
  MedicationsCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String dose,
    required String medicationTime,
  })  : name = Value(name),
        dose = Value(dose),
        medicationTime = Value(medicationTime);
  static Insertable<Medication> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? dose,
    Expression<String>? medicationTime,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (dose != null) 'dose': dose,
      if (medicationTime != null) 'medication_time': medicationTime,
    });
  }

  MedicationsCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? dose,
      Value<String>? medicationTime}) {
    return MedicationsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      dose: dose ?? this.dose,
      medicationTime: medicationTime ?? this.medicationTime,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (dose.present) {
      map['dose'] = Variable<String>(dose.value);
    }
    if (medicationTime.present) {
      map['medication_time'] = Variable<String>(medicationTime.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MedicationsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('dose: $dose, ')
          ..write('medicationTime: $medicationTime')
          ..write(')'))
        .toString();
  }
}

class $VaccineTable extends Vaccine with TableInfo<$VaccineTable, VaccineData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $VaccineTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _usedMeta = const VerificationMeta('used');
  @override
  late final GeneratedColumn<bool> used = GeneratedColumn<bool>(
      'used', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("used" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns => [id, name, used];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'vaccine';
  @override
  VerificationContext validateIntegrity(Insertable<VaccineData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('used')) {
      context.handle(
          _usedMeta, used.isAcceptableOrUnknown(data['used']!, _usedMeta));
    } else if (isInserting) {
      context.missing(_usedMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  VaccineData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return VaccineData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      used: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}used'])!,
    );
  }

  @override
  $VaccineTable createAlias(String alias) {
    return $VaccineTable(attachedDatabase, alias);
  }
}

class VaccineData extends DataClass implements Insertable<VaccineData> {
  final int id;
  final String name;
  final bool used;
  const VaccineData({required this.id, required this.name, required this.used});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['used'] = Variable<bool>(used);
    return map;
  }

  VaccineCompanion toCompanion(bool nullToAbsent) {
    return VaccineCompanion(
      id: Value(id),
      name: Value(name),
      used: Value(used),
    );
  }

  factory VaccineData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return VaccineData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      used: serializer.fromJson<bool>(json['used']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'used': serializer.toJson<bool>(used),
    };
  }

  VaccineData copyWith({int? id, String? name, bool? used}) => VaccineData(
        id: id ?? this.id,
        name: name ?? this.name,
        used: used ?? this.used,
      );
  VaccineData copyWithCompanion(VaccineCompanion data) {
    return VaccineData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      used: data.used.present ? data.used.value : this.used,
    );
  }

  @override
  String toString() {
    return (StringBuffer('VaccineData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('used: $used')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, used);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is VaccineData &&
          other.id == this.id &&
          other.name == this.name &&
          other.used == this.used);
}

class VaccineCompanion extends UpdateCompanion<VaccineData> {
  final Value<int> id;
  final Value<String> name;
  final Value<bool> used;
  const VaccineCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.used = const Value.absent(),
  });
  VaccineCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required bool used,
  })  : name = Value(name),
        used = Value(used);
  static Insertable<VaccineData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<bool>? used,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (used != null) 'used': used,
    });
  }

  VaccineCompanion copyWith(
      {Value<int>? id, Value<String>? name, Value<bool>? used}) {
    return VaccineCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      used: used ?? this.used,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (used.present) {
      map['used'] = Variable<bool>(used.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('VaccineCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('used: $used')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $BirthTable birth = $BirthTable(this);
  late final $BirthMomentTable birthMoment = $BirthMomentTable(this);
  late final $CurrentPregnancyTable currentPregnancy =
      $CurrentPregnancyTable(this);
  late final $ExpectationsTable expectations = $ExpectationsTable(this);
  late final $ObservationsTable observations = $ObservationsTable(this);
  late final $PainReliefTable painRelief = $PainReliefTable(this);
  late final $PreviousPregnanciesTable previousPregnancies =
      $PreviousPregnanciesTable(this);
  late final $BabyDataTable babyData = $BabyDataTable(this);
  late final $MaternityTable maternity = $MaternityTable(this);
  late final $PregnantTable pregnant = $PregnantTable(this);
  late final $PrenatalAppointmentTable prenatalAppointment =
      $PrenatalAppointmentTable(this);
  late final $UserTable user = $UserTable(this);
  late final $AppointmentsTable appointments = $AppointmentsTable(this);
  late final $ExamsTable exams = $ExamsTable(this);
  late final $MedicationsTable medications = $MedicationsTable(this);
  late final $VaccineTable vaccine = $VaccineTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        birth,
        birthMoment,
        currentPregnancy,
        expectations,
        observations,
        painRelief,
        previousPregnancies,
        babyData,
        maternity,
        pregnant,
        prenatalAppointment,
        user,
        appointments,
        exams,
        medications,
        vaccine
      ];
}

typedef $$BirthTableCreateCompanionBuilder = BirthCompanion Function({
  Value<int> id,
  required WhoCutUmbilicalCord whoCut,
  required bool collectStemCells,
  required SkinBabyContact skinBabyContact,
  required BreastfeedFirstHour breastfeedFirstHour,
  required bool breastfeedRestrictions,
  required FirstBath firstBath,
});
typedef $$BirthTableUpdateCompanionBuilder = BirthCompanion Function({
  Value<int> id,
  Value<WhoCutUmbilicalCord> whoCut,
  Value<bool> collectStemCells,
  Value<SkinBabyContact> skinBabyContact,
  Value<BreastfeedFirstHour> breastfeedFirstHour,
  Value<bool> breastfeedRestrictions,
  Value<FirstBath> firstBath,
});

class $$BirthTableFilterComposer extends Composer<_$AppDatabase, $BirthTable> {
  $$BirthTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<WhoCutUmbilicalCord, WhoCutUmbilicalCord, int>
      get whoCut => $composableBuilder(
          column: $table.whoCut,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<bool> get collectStemCells => $composableBuilder(
      column: $table.collectStemCells,
      builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<SkinBabyContact, SkinBabyContact, int>
      get skinBabyContact => $composableBuilder(
          column: $table.skinBabyContact,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<BreastfeedFirstHour, BreastfeedFirstHour, int>
      get breastfeedFirstHour => $composableBuilder(
          column: $table.breastfeedFirstHour,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<bool> get breastfeedRestrictions => $composableBuilder(
      column: $table.breastfeedRestrictions,
      builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<FirstBath, FirstBath, int> get firstBath =>
      $composableBuilder(
          column: $table.firstBath,
          builder: (column) => ColumnWithTypeConverterFilters(column));
}

class $$BirthTableOrderingComposer
    extends Composer<_$AppDatabase, $BirthTable> {
  $$BirthTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get whoCut => $composableBuilder(
      column: $table.whoCut, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get collectStemCells => $composableBuilder(
      column: $table.collectStemCells,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get skinBabyContact => $composableBuilder(
      column: $table.skinBabyContact,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get breastfeedFirstHour => $composableBuilder(
      column: $table.breastfeedFirstHour,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get breastfeedRestrictions => $composableBuilder(
      column: $table.breastfeedRestrictions,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get firstBath => $composableBuilder(
      column: $table.firstBath, builder: (column) => ColumnOrderings(column));
}

class $$BirthTableAnnotationComposer
    extends Composer<_$AppDatabase, $BirthTable> {
  $$BirthTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumnWithTypeConverter<WhoCutUmbilicalCord, int> get whoCut =>
      $composableBuilder(column: $table.whoCut, builder: (column) => column);

  GeneratedColumn<bool> get collectStemCells => $composableBuilder(
      column: $table.collectStemCells, builder: (column) => column);

  GeneratedColumnWithTypeConverter<SkinBabyContact, int> get skinBabyContact =>
      $composableBuilder(
          column: $table.skinBabyContact, builder: (column) => column);

  GeneratedColumnWithTypeConverter<BreastfeedFirstHour, int>
      get breastfeedFirstHour => $composableBuilder(
          column: $table.breastfeedFirstHour, builder: (column) => column);

  GeneratedColumn<bool> get breastfeedRestrictions => $composableBuilder(
      column: $table.breastfeedRestrictions, builder: (column) => column);

  GeneratedColumnWithTypeConverter<FirstBath, int> get firstBath =>
      $composableBuilder(column: $table.firstBath, builder: (column) => column);
}

class $$BirthTableTableManager extends RootTableManager<
    _$AppDatabase,
    $BirthTable,
    BirthData,
    $$BirthTableFilterComposer,
    $$BirthTableOrderingComposer,
    $$BirthTableAnnotationComposer,
    $$BirthTableCreateCompanionBuilder,
    $$BirthTableUpdateCompanionBuilder,
    (BirthData, BaseReferences<_$AppDatabase, $BirthTable, BirthData>),
    BirthData,
    PrefetchHooks Function()> {
  $$BirthTableTableManager(_$AppDatabase db, $BirthTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$BirthTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$BirthTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$BirthTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<WhoCutUmbilicalCord> whoCut = const Value.absent(),
            Value<bool> collectStemCells = const Value.absent(),
            Value<SkinBabyContact> skinBabyContact = const Value.absent(),
            Value<BreastfeedFirstHour> breastfeedFirstHour =
                const Value.absent(),
            Value<bool> breastfeedRestrictions = const Value.absent(),
            Value<FirstBath> firstBath = const Value.absent(),
          }) =>
              BirthCompanion(
            id: id,
            whoCut: whoCut,
            collectStemCells: collectStemCells,
            skinBabyContact: skinBabyContact,
            breastfeedFirstHour: breastfeedFirstHour,
            breastfeedRestrictions: breastfeedRestrictions,
            firstBath: firstBath,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required WhoCutUmbilicalCord whoCut,
            required bool collectStemCells,
            required SkinBabyContact skinBabyContact,
            required BreastfeedFirstHour breastfeedFirstHour,
            required bool breastfeedRestrictions,
            required FirstBath firstBath,
          }) =>
              BirthCompanion.insert(
            id: id,
            whoCut: whoCut,
            collectStemCells: collectStemCells,
            skinBabyContact: skinBabyContact,
            breastfeedFirstHour: breastfeedFirstHour,
            breastfeedRestrictions: breastfeedRestrictions,
            firstBath: firstBath,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$BirthTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $BirthTable,
    BirthData,
    $$BirthTableFilterComposer,
    $$BirthTableOrderingComposer,
    $$BirthTableAnnotationComposer,
    $$BirthTableCreateCompanionBuilder,
    $$BirthTableUpdateCompanionBuilder,
    (BirthData, BaseReferences<_$AppDatabase, $BirthTable, BirthData>),
    BirthData,
    PrefetchHooks Function()>;
typedef $$BirthMomentTableCreateCompanionBuilder = BirthMomentCompanion
    Function({
  Value<int> id,
  required BirthWay birthWay,
  required Anesthesia anesthesia,
  required VaginalCut vaginalCut,
  Value<Positions?> preferredPosition,
  Value<String?> otherPosition,
});
typedef $$BirthMomentTableUpdateCompanionBuilder = BirthMomentCompanion
    Function({
  Value<int> id,
  Value<BirthWay> birthWay,
  Value<Anesthesia> anesthesia,
  Value<VaginalCut> vaginalCut,
  Value<Positions?> preferredPosition,
  Value<String?> otherPosition,
});

class $$BirthMomentTableFilterComposer
    extends Composer<_$AppDatabase, $BirthMomentTable> {
  $$BirthMomentTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<BirthWay, BirthWay, int> get birthWay =>
      $composableBuilder(
          column: $table.birthWay,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<Anesthesia, Anesthesia, int> get anesthesia =>
      $composableBuilder(
          column: $table.anesthesia,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<VaginalCut, VaginalCut, int> get vaginalCut =>
      $composableBuilder(
          column: $table.vaginalCut,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<Positions?, Positions, int>
      get preferredPosition => $composableBuilder(
          column: $table.preferredPosition,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<String> get otherPosition => $composableBuilder(
      column: $table.otherPosition, builder: (column) => ColumnFilters(column));
}

class $$BirthMomentTableOrderingComposer
    extends Composer<_$AppDatabase, $BirthMomentTable> {
  $$BirthMomentTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get birthWay => $composableBuilder(
      column: $table.birthWay, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get anesthesia => $composableBuilder(
      column: $table.anesthesia, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get vaginalCut => $composableBuilder(
      column: $table.vaginalCut, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get preferredPosition => $composableBuilder(
      column: $table.preferredPosition,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get otherPosition => $composableBuilder(
      column: $table.otherPosition,
      builder: (column) => ColumnOrderings(column));
}

class $$BirthMomentTableAnnotationComposer
    extends Composer<_$AppDatabase, $BirthMomentTable> {
  $$BirthMomentTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumnWithTypeConverter<BirthWay, int> get birthWay =>
      $composableBuilder(column: $table.birthWay, builder: (column) => column);

  GeneratedColumnWithTypeConverter<Anesthesia, int> get anesthesia =>
      $composableBuilder(
          column: $table.anesthesia, builder: (column) => column);

  GeneratedColumnWithTypeConverter<VaginalCut, int> get vaginalCut =>
      $composableBuilder(
          column: $table.vaginalCut, builder: (column) => column);

  GeneratedColumnWithTypeConverter<Positions?, int> get preferredPosition =>
      $composableBuilder(
          column: $table.preferredPosition, builder: (column) => column);

  GeneratedColumn<String> get otherPosition => $composableBuilder(
      column: $table.otherPosition, builder: (column) => column);
}

class $$BirthMomentTableTableManager extends RootTableManager<
    _$AppDatabase,
    $BirthMomentTable,
    BirthMomentData,
    $$BirthMomentTableFilterComposer,
    $$BirthMomentTableOrderingComposer,
    $$BirthMomentTableAnnotationComposer,
    $$BirthMomentTableCreateCompanionBuilder,
    $$BirthMomentTableUpdateCompanionBuilder,
    (
      BirthMomentData,
      BaseReferences<_$AppDatabase, $BirthMomentTable, BirthMomentData>
    ),
    BirthMomentData,
    PrefetchHooks Function()> {
  $$BirthMomentTableTableManager(_$AppDatabase db, $BirthMomentTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$BirthMomentTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$BirthMomentTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$BirthMomentTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<BirthWay> birthWay = const Value.absent(),
            Value<Anesthesia> anesthesia = const Value.absent(),
            Value<VaginalCut> vaginalCut = const Value.absent(),
            Value<Positions?> preferredPosition = const Value.absent(),
            Value<String?> otherPosition = const Value.absent(),
          }) =>
              BirthMomentCompanion(
            id: id,
            birthWay: birthWay,
            anesthesia: anesthesia,
            vaginalCut: vaginalCut,
            preferredPosition: preferredPosition,
            otherPosition: otherPosition,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required BirthWay birthWay,
            required Anesthesia anesthesia,
            required VaginalCut vaginalCut,
            Value<Positions?> preferredPosition = const Value.absent(),
            Value<String?> otherPosition = const Value.absent(),
          }) =>
              BirthMomentCompanion.insert(
            id: id,
            birthWay: birthWay,
            anesthesia: anesthesia,
            vaginalCut: vaginalCut,
            preferredPosition: preferredPosition,
            otherPosition: otherPosition,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$BirthMomentTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $BirthMomentTable,
    BirthMomentData,
    $$BirthMomentTableFilterComposer,
    $$BirthMomentTableOrderingComposer,
    $$BirthMomentTableAnnotationComposer,
    $$BirthMomentTableCreateCompanionBuilder,
    $$BirthMomentTableUpdateCompanionBuilder,
    (
      BirthMomentData,
      BaseReferences<_$AppDatabase, $BirthMomentTable, BirthMomentData>
    ),
    BirthMomentData,
    PrefetchHooks Function()>;
typedef $$CurrentPregnancyTableCreateCompanionBuilder
    = CurrentPregnancyCompanion Function({
  Value<int> id,
  Value<String?> lastMenstrualPeriod,
  Value<String?> firstUltrasound,
});
typedef $$CurrentPregnancyTableUpdateCompanionBuilder
    = CurrentPregnancyCompanion Function({
  Value<int> id,
  Value<String?> lastMenstrualPeriod,
  Value<String?> firstUltrasound,
});

class $$CurrentPregnancyTableFilterComposer
    extends Composer<_$AppDatabase, $CurrentPregnancyTable> {
  $$CurrentPregnancyTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get lastMenstrualPeriod => $composableBuilder(
      column: $table.lastMenstrualPeriod,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get firstUltrasound => $composableBuilder(
      column: $table.firstUltrasound,
      builder: (column) => ColumnFilters(column));
}

class $$CurrentPregnancyTableOrderingComposer
    extends Composer<_$AppDatabase, $CurrentPregnancyTable> {
  $$CurrentPregnancyTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get lastMenstrualPeriod => $composableBuilder(
      column: $table.lastMenstrualPeriod,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get firstUltrasound => $composableBuilder(
      column: $table.firstUltrasound,
      builder: (column) => ColumnOrderings(column));
}

class $$CurrentPregnancyTableAnnotationComposer
    extends Composer<_$AppDatabase, $CurrentPregnancyTable> {
  $$CurrentPregnancyTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get lastMenstrualPeriod => $composableBuilder(
      column: $table.lastMenstrualPeriod, builder: (column) => column);

  GeneratedColumn<String> get firstUltrasound => $composableBuilder(
      column: $table.firstUltrasound, builder: (column) => column);
}

class $$CurrentPregnancyTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CurrentPregnancyTable,
    CurrentPregnancyData,
    $$CurrentPregnancyTableFilterComposer,
    $$CurrentPregnancyTableOrderingComposer,
    $$CurrentPregnancyTableAnnotationComposer,
    $$CurrentPregnancyTableCreateCompanionBuilder,
    $$CurrentPregnancyTableUpdateCompanionBuilder,
    (
      CurrentPregnancyData,
      BaseReferences<_$AppDatabase, $CurrentPregnancyTable,
          CurrentPregnancyData>
    ),
    CurrentPregnancyData,
    PrefetchHooks Function()> {
  $$CurrentPregnancyTableTableManager(
      _$AppDatabase db, $CurrentPregnancyTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CurrentPregnancyTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CurrentPregnancyTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CurrentPregnancyTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String?> lastMenstrualPeriod = const Value.absent(),
            Value<String?> firstUltrasound = const Value.absent(),
          }) =>
              CurrentPregnancyCompanion(
            id: id,
            lastMenstrualPeriod: lastMenstrualPeriod,
            firstUltrasound: firstUltrasound,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String?> lastMenstrualPeriod = const Value.absent(),
            Value<String?> firstUltrasound = const Value.absent(),
          }) =>
              CurrentPregnancyCompanion.insert(
            id: id,
            lastMenstrualPeriod: lastMenstrualPeriod,
            firstUltrasound: firstUltrasound,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$CurrentPregnancyTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $CurrentPregnancyTable,
    CurrentPregnancyData,
    $$CurrentPregnancyTableFilterComposer,
    $$CurrentPregnancyTableOrderingComposer,
    $$CurrentPregnancyTableAnnotationComposer,
    $$CurrentPregnancyTableCreateCompanionBuilder,
    $$CurrentPregnancyTableUpdateCompanionBuilder,
    (
      CurrentPregnancyData,
      BaseReferences<_$AppDatabase, $CurrentPregnancyTable,
          CurrentPregnancyData>
    ),
    CurrentPregnancyData,
    PrefetchHooks Function()>;
typedef $$ExpectationsTableCreateCompanionBuilder = ExpectationsCompanion
    Function({
  Value<int> id,
  required Alternatives companion,
  required Alternatives shaveIntimateHair,
  required Alternatives bowelWashOrSuppository,
  required Alternatives lowLightEnvironment,
  required Alternatives listenToMusic,
  required Alternatives drinkLiquids,
  required Alternatives recordPhotosOrVideos,
});
typedef $$ExpectationsTableUpdateCompanionBuilder = ExpectationsCompanion
    Function({
  Value<int> id,
  Value<Alternatives> companion,
  Value<Alternatives> shaveIntimateHair,
  Value<Alternatives> bowelWashOrSuppository,
  Value<Alternatives> lowLightEnvironment,
  Value<Alternatives> listenToMusic,
  Value<Alternatives> drinkLiquids,
  Value<Alternatives> recordPhotosOrVideos,
});

class $$ExpectationsTableFilterComposer
    extends Composer<_$AppDatabase, $ExpectationsTable> {
  $$ExpectationsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<Alternatives, Alternatives, int>
      get companion => $composableBuilder(
          column: $table.companion,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<Alternatives, Alternatives, int>
      get shaveIntimateHair => $composableBuilder(
          column: $table.shaveIntimateHair,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<Alternatives, Alternatives, int>
      get bowelWashOrSuppository => $composableBuilder(
          column: $table.bowelWashOrSuppository,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<Alternatives, Alternatives, int>
      get lowLightEnvironment => $composableBuilder(
          column: $table.lowLightEnvironment,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<Alternatives, Alternatives, int>
      get listenToMusic => $composableBuilder(
          column: $table.listenToMusic,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<Alternatives, Alternatives, int>
      get drinkLiquids => $composableBuilder(
          column: $table.drinkLiquids,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<Alternatives, Alternatives, int>
      get recordPhotosOrVideos => $composableBuilder(
          column: $table.recordPhotosOrVideos,
          builder: (column) => ColumnWithTypeConverterFilters(column));
}

class $$ExpectationsTableOrderingComposer
    extends Composer<_$AppDatabase, $ExpectationsTable> {
  $$ExpectationsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get companion => $composableBuilder(
      column: $table.companion, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get shaveIntimateHair => $composableBuilder(
      column: $table.shaveIntimateHair,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get bowelWashOrSuppository => $composableBuilder(
      column: $table.bowelWashOrSuppository,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get lowLightEnvironment => $composableBuilder(
      column: $table.lowLightEnvironment,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get listenToMusic => $composableBuilder(
      column: $table.listenToMusic,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get drinkLiquids => $composableBuilder(
      column: $table.drinkLiquids,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get recordPhotosOrVideos => $composableBuilder(
      column: $table.recordPhotosOrVideos,
      builder: (column) => ColumnOrderings(column));
}

class $$ExpectationsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ExpectationsTable> {
  $$ExpectationsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumnWithTypeConverter<Alternatives, int> get companion =>
      $composableBuilder(column: $table.companion, builder: (column) => column);

  GeneratedColumnWithTypeConverter<Alternatives, int> get shaveIntimateHair =>
      $composableBuilder(
          column: $table.shaveIntimateHair, builder: (column) => column);

  GeneratedColumnWithTypeConverter<Alternatives, int>
      get bowelWashOrSuppository => $composableBuilder(
          column: $table.bowelWashOrSuppository, builder: (column) => column);

  GeneratedColumnWithTypeConverter<Alternatives, int> get lowLightEnvironment =>
      $composableBuilder(
          column: $table.lowLightEnvironment, builder: (column) => column);

  GeneratedColumnWithTypeConverter<Alternatives, int> get listenToMusic =>
      $composableBuilder(
          column: $table.listenToMusic, builder: (column) => column);

  GeneratedColumnWithTypeConverter<Alternatives, int> get drinkLiquids =>
      $composableBuilder(
          column: $table.drinkLiquids, builder: (column) => column);

  GeneratedColumnWithTypeConverter<Alternatives, int>
      get recordPhotosOrVideos => $composableBuilder(
          column: $table.recordPhotosOrVideos, builder: (column) => column);
}

class $$ExpectationsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ExpectationsTable,
    Expectation,
    $$ExpectationsTableFilterComposer,
    $$ExpectationsTableOrderingComposer,
    $$ExpectationsTableAnnotationComposer,
    $$ExpectationsTableCreateCompanionBuilder,
    $$ExpectationsTableUpdateCompanionBuilder,
    (
      Expectation,
      BaseReferences<_$AppDatabase, $ExpectationsTable, Expectation>
    ),
    Expectation,
    PrefetchHooks Function()> {
  $$ExpectationsTableTableManager(_$AppDatabase db, $ExpectationsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ExpectationsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ExpectationsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ExpectationsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<Alternatives> companion = const Value.absent(),
            Value<Alternatives> shaveIntimateHair = const Value.absent(),
            Value<Alternatives> bowelWashOrSuppository = const Value.absent(),
            Value<Alternatives> lowLightEnvironment = const Value.absent(),
            Value<Alternatives> listenToMusic = const Value.absent(),
            Value<Alternatives> drinkLiquids = const Value.absent(),
            Value<Alternatives> recordPhotosOrVideos = const Value.absent(),
          }) =>
              ExpectationsCompanion(
            id: id,
            companion: companion,
            shaveIntimateHair: shaveIntimateHair,
            bowelWashOrSuppository: bowelWashOrSuppository,
            lowLightEnvironment: lowLightEnvironment,
            listenToMusic: listenToMusic,
            drinkLiquids: drinkLiquids,
            recordPhotosOrVideos: recordPhotosOrVideos,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required Alternatives companion,
            required Alternatives shaveIntimateHair,
            required Alternatives bowelWashOrSuppository,
            required Alternatives lowLightEnvironment,
            required Alternatives listenToMusic,
            required Alternatives drinkLiquids,
            required Alternatives recordPhotosOrVideos,
          }) =>
              ExpectationsCompanion.insert(
            id: id,
            companion: companion,
            shaveIntimateHair: shaveIntimateHair,
            bowelWashOrSuppository: bowelWashOrSuppository,
            lowLightEnvironment: lowLightEnvironment,
            listenToMusic: listenToMusic,
            drinkLiquids: drinkLiquids,
            recordPhotosOrVideos: recordPhotosOrVideos,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ExpectationsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ExpectationsTable,
    Expectation,
    $$ExpectationsTableFilterComposer,
    $$ExpectationsTableOrderingComposer,
    $$ExpectationsTableAnnotationComposer,
    $$ExpectationsTableCreateCompanionBuilder,
    $$ExpectationsTableUpdateCompanionBuilder,
    (
      Expectation,
      BaseReferences<_$AppDatabase, $ExpectationsTable, Expectation>
    ),
    Expectation,
    PrefetchHooks Function()>;
typedef $$ObservationsTableCreateCompanionBuilder = ObservationsCompanion
    Function({
  Value<int> id,
  required String observations,
});
typedef $$ObservationsTableUpdateCompanionBuilder = ObservationsCompanion
    Function({
  Value<int> id,
  Value<String> observations,
});

class $$ObservationsTableFilterComposer
    extends Composer<_$AppDatabase, $ObservationsTable> {
  $$ObservationsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get observations => $composableBuilder(
      column: $table.observations, builder: (column) => ColumnFilters(column));
}

class $$ObservationsTableOrderingComposer
    extends Composer<_$AppDatabase, $ObservationsTable> {
  $$ObservationsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get observations => $composableBuilder(
      column: $table.observations,
      builder: (column) => ColumnOrderings(column));
}

class $$ObservationsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ObservationsTable> {
  $$ObservationsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get observations => $composableBuilder(
      column: $table.observations, builder: (column) => column);
}

class $$ObservationsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ObservationsTable,
    Observation,
    $$ObservationsTableFilterComposer,
    $$ObservationsTableOrderingComposer,
    $$ObservationsTableAnnotationComposer,
    $$ObservationsTableCreateCompanionBuilder,
    $$ObservationsTableUpdateCompanionBuilder,
    (
      Observation,
      BaseReferences<_$AppDatabase, $ObservationsTable, Observation>
    ),
    Observation,
    PrefetchHooks Function()> {
  $$ObservationsTableTableManager(_$AppDatabase db, $ObservationsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ObservationsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ObservationsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ObservationsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> observations = const Value.absent(),
          }) =>
              ObservationsCompanion(
            id: id,
            observations: observations,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String observations,
          }) =>
              ObservationsCompanion.insert(
            id: id,
            observations: observations,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ObservationsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ObservationsTable,
    Observation,
    $$ObservationsTableFilterComposer,
    $$ObservationsTableOrderingComposer,
    $$ObservationsTableAnnotationComposer,
    $$ObservationsTableCreateCompanionBuilder,
    $$ObservationsTableUpdateCompanionBuilder,
    (
      Observation,
      BaseReferences<_$AppDatabase, $ObservationsTable, Observation>
    ),
    Observation,
    PrefetchHooks Function()>;
typedef $$PainReliefTableCreateCompanionBuilder = PainReliefCompanion Function({
  Value<int> id,
  required NeedPainRelief painRelief,
  required bool massage,
  required bool ballExercises,
  required bool breathRelaxExercises,
  required bool showerBath,
  required bool bathtubBath,
  required bool acupuncture,
  required bool acupressure,
  required bool otherMethod,
});
typedef $$PainReliefTableUpdateCompanionBuilder = PainReliefCompanion Function({
  Value<int> id,
  Value<NeedPainRelief> painRelief,
  Value<bool> massage,
  Value<bool> ballExercises,
  Value<bool> breathRelaxExercises,
  Value<bool> showerBath,
  Value<bool> bathtubBath,
  Value<bool> acupuncture,
  Value<bool> acupressure,
  Value<bool> otherMethod,
});

class $$PainReliefTableFilterComposer
    extends Composer<_$AppDatabase, $PainReliefTable> {
  $$PainReliefTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<NeedPainRelief, NeedPainRelief, int>
      get painRelief => $composableBuilder(
          column: $table.painRelief,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<bool> get massage => $composableBuilder(
      column: $table.massage, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get ballExercises => $composableBuilder(
      column: $table.ballExercises, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get breathRelaxExercises => $composableBuilder(
      column: $table.breathRelaxExercises,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get showerBath => $composableBuilder(
      column: $table.showerBath, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get bathtubBath => $composableBuilder(
      column: $table.bathtubBath, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get acupuncture => $composableBuilder(
      column: $table.acupuncture, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get acupressure => $composableBuilder(
      column: $table.acupressure, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get otherMethod => $composableBuilder(
      column: $table.otherMethod, builder: (column) => ColumnFilters(column));
}

class $$PainReliefTableOrderingComposer
    extends Composer<_$AppDatabase, $PainReliefTable> {
  $$PainReliefTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get painRelief => $composableBuilder(
      column: $table.painRelief, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get massage => $composableBuilder(
      column: $table.massage, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get ballExercises => $composableBuilder(
      column: $table.ballExercises,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get breathRelaxExercises => $composableBuilder(
      column: $table.breathRelaxExercises,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get showerBath => $composableBuilder(
      column: $table.showerBath, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get bathtubBath => $composableBuilder(
      column: $table.bathtubBath, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get acupuncture => $composableBuilder(
      column: $table.acupuncture, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get acupressure => $composableBuilder(
      column: $table.acupressure, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get otherMethod => $composableBuilder(
      column: $table.otherMethod, builder: (column) => ColumnOrderings(column));
}

class $$PainReliefTableAnnotationComposer
    extends Composer<_$AppDatabase, $PainReliefTable> {
  $$PainReliefTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumnWithTypeConverter<NeedPainRelief, int> get painRelief =>
      $composableBuilder(
          column: $table.painRelief, builder: (column) => column);

  GeneratedColumn<bool> get massage =>
      $composableBuilder(column: $table.massage, builder: (column) => column);

  GeneratedColumn<bool> get ballExercises => $composableBuilder(
      column: $table.ballExercises, builder: (column) => column);

  GeneratedColumn<bool> get breathRelaxExercises => $composableBuilder(
      column: $table.breathRelaxExercises, builder: (column) => column);

  GeneratedColumn<bool> get showerBath => $composableBuilder(
      column: $table.showerBath, builder: (column) => column);

  GeneratedColumn<bool> get bathtubBath => $composableBuilder(
      column: $table.bathtubBath, builder: (column) => column);

  GeneratedColumn<bool> get acupuncture => $composableBuilder(
      column: $table.acupuncture, builder: (column) => column);

  GeneratedColumn<bool> get acupressure => $composableBuilder(
      column: $table.acupressure, builder: (column) => column);

  GeneratedColumn<bool> get otherMethod => $composableBuilder(
      column: $table.otherMethod, builder: (column) => column);
}

class $$PainReliefTableTableManager extends RootTableManager<
    _$AppDatabase,
    $PainReliefTable,
    PainReliefData,
    $$PainReliefTableFilterComposer,
    $$PainReliefTableOrderingComposer,
    $$PainReliefTableAnnotationComposer,
    $$PainReliefTableCreateCompanionBuilder,
    $$PainReliefTableUpdateCompanionBuilder,
    (
      PainReliefData,
      BaseReferences<_$AppDatabase, $PainReliefTable, PainReliefData>
    ),
    PainReliefData,
    PrefetchHooks Function()> {
  $$PainReliefTableTableManager(_$AppDatabase db, $PainReliefTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PainReliefTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PainReliefTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PainReliefTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<NeedPainRelief> painRelief = const Value.absent(),
            Value<bool> massage = const Value.absent(),
            Value<bool> ballExercises = const Value.absent(),
            Value<bool> breathRelaxExercises = const Value.absent(),
            Value<bool> showerBath = const Value.absent(),
            Value<bool> bathtubBath = const Value.absent(),
            Value<bool> acupuncture = const Value.absent(),
            Value<bool> acupressure = const Value.absent(),
            Value<bool> otherMethod = const Value.absent(),
          }) =>
              PainReliefCompanion(
            id: id,
            painRelief: painRelief,
            massage: massage,
            ballExercises: ballExercises,
            breathRelaxExercises: breathRelaxExercises,
            showerBath: showerBath,
            bathtubBath: bathtubBath,
            acupuncture: acupuncture,
            acupressure: acupressure,
            otherMethod: otherMethod,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required NeedPainRelief painRelief,
            required bool massage,
            required bool ballExercises,
            required bool breathRelaxExercises,
            required bool showerBath,
            required bool bathtubBath,
            required bool acupuncture,
            required bool acupressure,
            required bool otherMethod,
          }) =>
              PainReliefCompanion.insert(
            id: id,
            painRelief: painRelief,
            massage: massage,
            ballExercises: ballExercises,
            breathRelaxExercises: breathRelaxExercises,
            showerBath: showerBath,
            bathtubBath: bathtubBath,
            acupuncture: acupuncture,
            acupressure: acupressure,
            otherMethod: otherMethod,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$PainReliefTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $PainReliefTable,
    PainReliefData,
    $$PainReliefTableFilterComposer,
    $$PainReliefTableOrderingComposer,
    $$PainReliefTableAnnotationComposer,
    $$PainReliefTableCreateCompanionBuilder,
    $$PainReliefTableUpdateCompanionBuilder,
    (
      PainReliefData,
      BaseReferences<_$AppDatabase, $PainReliefTable, PainReliefData>
    ),
    PainReliefData,
    PrefetchHooks Function()>;
typedef $$PreviousPregnanciesTableCreateCompanionBuilder
    = PreviousPregnanciesCompanion Function({
  Value<int> id,
  Value<int?> pregnancyNumber,
  Value<int?> givenBirthNumber,
  Value<int?> abortionsNumber,
});
typedef $$PreviousPregnanciesTableUpdateCompanionBuilder
    = PreviousPregnanciesCompanion Function({
  Value<int> id,
  Value<int?> pregnancyNumber,
  Value<int?> givenBirthNumber,
  Value<int?> abortionsNumber,
});

class $$PreviousPregnanciesTableFilterComposer
    extends Composer<_$AppDatabase, $PreviousPregnanciesTable> {
  $$PreviousPregnanciesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get pregnancyNumber => $composableBuilder(
      column: $table.pregnancyNumber,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get givenBirthNumber => $composableBuilder(
      column: $table.givenBirthNumber,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get abortionsNumber => $composableBuilder(
      column: $table.abortionsNumber,
      builder: (column) => ColumnFilters(column));
}

class $$PreviousPregnanciesTableOrderingComposer
    extends Composer<_$AppDatabase, $PreviousPregnanciesTable> {
  $$PreviousPregnanciesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get pregnancyNumber => $composableBuilder(
      column: $table.pregnancyNumber,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get givenBirthNumber => $composableBuilder(
      column: $table.givenBirthNumber,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get abortionsNumber => $composableBuilder(
      column: $table.abortionsNumber,
      builder: (column) => ColumnOrderings(column));
}

class $$PreviousPregnanciesTableAnnotationComposer
    extends Composer<_$AppDatabase, $PreviousPregnanciesTable> {
  $$PreviousPregnanciesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get pregnancyNumber => $composableBuilder(
      column: $table.pregnancyNumber, builder: (column) => column);

  GeneratedColumn<int> get givenBirthNumber => $composableBuilder(
      column: $table.givenBirthNumber, builder: (column) => column);

  GeneratedColumn<int> get abortionsNumber => $composableBuilder(
      column: $table.abortionsNumber, builder: (column) => column);
}

class $$PreviousPregnanciesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $PreviousPregnanciesTable,
    PreviousPregnancy,
    $$PreviousPregnanciesTableFilterComposer,
    $$PreviousPregnanciesTableOrderingComposer,
    $$PreviousPregnanciesTableAnnotationComposer,
    $$PreviousPregnanciesTableCreateCompanionBuilder,
    $$PreviousPregnanciesTableUpdateCompanionBuilder,
    (
      PreviousPregnancy,
      BaseReferences<_$AppDatabase, $PreviousPregnanciesTable,
          PreviousPregnancy>
    ),
    PreviousPregnancy,
    PrefetchHooks Function()> {
  $$PreviousPregnanciesTableTableManager(
      _$AppDatabase db, $PreviousPregnanciesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PreviousPregnanciesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PreviousPregnanciesTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PreviousPregnanciesTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int?> pregnancyNumber = const Value.absent(),
            Value<int?> givenBirthNumber = const Value.absent(),
            Value<int?> abortionsNumber = const Value.absent(),
          }) =>
              PreviousPregnanciesCompanion(
            id: id,
            pregnancyNumber: pregnancyNumber,
            givenBirthNumber: givenBirthNumber,
            abortionsNumber: abortionsNumber,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int?> pregnancyNumber = const Value.absent(),
            Value<int?> givenBirthNumber = const Value.absent(),
            Value<int?> abortionsNumber = const Value.absent(),
          }) =>
              PreviousPregnanciesCompanion.insert(
            id: id,
            pregnancyNumber: pregnancyNumber,
            givenBirthNumber: givenBirthNumber,
            abortionsNumber: abortionsNumber,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$PreviousPregnanciesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $PreviousPregnanciesTable,
    PreviousPregnancy,
    $$PreviousPregnanciesTableFilterComposer,
    $$PreviousPregnanciesTableOrderingComposer,
    $$PreviousPregnanciesTableAnnotationComposer,
    $$PreviousPregnanciesTableCreateCompanionBuilder,
    $$PreviousPregnanciesTableUpdateCompanionBuilder,
    (
      PreviousPregnancy,
      BaseReferences<_$AppDatabase, $PreviousPregnanciesTable,
          PreviousPregnancy>
    ),
    PreviousPregnancy,
    PrefetchHooks Function()>;
typedef $$BabyDataTableCreateCompanionBuilder = BabyDataCompanion Function({
  Value<int> id,
  required String name,
  required DateTime birthDate,
  required DateTime birthTime,
  required BabySex babySex,
  required int weekGestationAge,
  required int dayGestationAge,
  required double weight,
  required double height,
  required double headCircumference,
  required int firstMinuteApgar,
  required int fifthMinuteApgar,
  required BirthType birthType,
  required bool instrumentedBirth,
  required bool inducedLabor,
});
typedef $$BabyDataTableUpdateCompanionBuilder = BabyDataCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<DateTime> birthDate,
  Value<DateTime> birthTime,
  Value<BabySex> babySex,
  Value<int> weekGestationAge,
  Value<int> dayGestationAge,
  Value<double> weight,
  Value<double> height,
  Value<double> headCircumference,
  Value<int> firstMinuteApgar,
  Value<int> fifthMinuteApgar,
  Value<BirthType> birthType,
  Value<bool> instrumentedBirth,
  Value<bool> inducedLabor,
});

class $$BabyDataTableFilterComposer
    extends Composer<_$AppDatabase, $BabyDataTable> {
  $$BabyDataTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get birthDate => $composableBuilder(
      column: $table.birthDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get birthTime => $composableBuilder(
      column: $table.birthTime, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<BabySex, BabySex, int> get babySex =>
      $composableBuilder(
          column: $table.babySex,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<int> get weekGestationAge => $composableBuilder(
      column: $table.weekGestationAge,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get dayGestationAge => $composableBuilder(
      column: $table.dayGestationAge,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get weight => $composableBuilder(
      column: $table.weight, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get height => $composableBuilder(
      column: $table.height, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get headCircumference => $composableBuilder(
      column: $table.headCircumference,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get firstMinuteApgar => $composableBuilder(
      column: $table.firstMinuteApgar,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get fifthMinuteApgar => $composableBuilder(
      column: $table.fifthMinuteApgar,
      builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<BirthType, BirthType, int> get birthType =>
      $composableBuilder(
          column: $table.birthType,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<bool> get instrumentedBirth => $composableBuilder(
      column: $table.instrumentedBirth,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get inducedLabor => $composableBuilder(
      column: $table.inducedLabor, builder: (column) => ColumnFilters(column));
}

class $$BabyDataTableOrderingComposer
    extends Composer<_$AppDatabase, $BabyDataTable> {
  $$BabyDataTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get birthDate => $composableBuilder(
      column: $table.birthDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get birthTime => $composableBuilder(
      column: $table.birthTime, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get babySex => $composableBuilder(
      column: $table.babySex, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get weekGestationAge => $composableBuilder(
      column: $table.weekGestationAge,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get dayGestationAge => $composableBuilder(
      column: $table.dayGestationAge,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get weight => $composableBuilder(
      column: $table.weight, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get height => $composableBuilder(
      column: $table.height, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get headCircumference => $composableBuilder(
      column: $table.headCircumference,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get firstMinuteApgar => $composableBuilder(
      column: $table.firstMinuteApgar,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get fifthMinuteApgar => $composableBuilder(
      column: $table.fifthMinuteApgar,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get birthType => $composableBuilder(
      column: $table.birthType, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get instrumentedBirth => $composableBuilder(
      column: $table.instrumentedBirth,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get inducedLabor => $composableBuilder(
      column: $table.inducedLabor,
      builder: (column) => ColumnOrderings(column));
}

class $$BabyDataTableAnnotationComposer
    extends Composer<_$AppDatabase, $BabyDataTable> {
  $$BabyDataTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<DateTime> get birthDate =>
      $composableBuilder(column: $table.birthDate, builder: (column) => column);

  GeneratedColumn<DateTime> get birthTime =>
      $composableBuilder(column: $table.birthTime, builder: (column) => column);

  GeneratedColumnWithTypeConverter<BabySex, int> get babySex =>
      $composableBuilder(column: $table.babySex, builder: (column) => column);

  GeneratedColumn<int> get weekGestationAge => $composableBuilder(
      column: $table.weekGestationAge, builder: (column) => column);

  GeneratedColumn<int> get dayGestationAge => $composableBuilder(
      column: $table.dayGestationAge, builder: (column) => column);

  GeneratedColumn<double> get weight =>
      $composableBuilder(column: $table.weight, builder: (column) => column);

  GeneratedColumn<double> get height =>
      $composableBuilder(column: $table.height, builder: (column) => column);

  GeneratedColumn<double> get headCircumference => $composableBuilder(
      column: $table.headCircumference, builder: (column) => column);

  GeneratedColumn<int> get firstMinuteApgar => $composableBuilder(
      column: $table.firstMinuteApgar, builder: (column) => column);

  GeneratedColumn<int> get fifthMinuteApgar => $composableBuilder(
      column: $table.fifthMinuteApgar, builder: (column) => column);

  GeneratedColumnWithTypeConverter<BirthType, int> get birthType =>
      $composableBuilder(column: $table.birthType, builder: (column) => column);

  GeneratedColumn<bool> get instrumentedBirth => $composableBuilder(
      column: $table.instrumentedBirth, builder: (column) => column);

  GeneratedColumn<bool> get inducedLabor => $composableBuilder(
      column: $table.inducedLabor, builder: (column) => column);
}

class $$BabyDataTableTableManager extends RootTableManager<
    _$AppDatabase,
    $BabyDataTable,
    BabyDataData,
    $$BabyDataTableFilterComposer,
    $$BabyDataTableOrderingComposer,
    $$BabyDataTableAnnotationComposer,
    $$BabyDataTableCreateCompanionBuilder,
    $$BabyDataTableUpdateCompanionBuilder,
    (BabyDataData, BaseReferences<_$AppDatabase, $BabyDataTable, BabyDataData>),
    BabyDataData,
    PrefetchHooks Function()> {
  $$BabyDataTableTableManager(_$AppDatabase db, $BabyDataTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$BabyDataTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$BabyDataTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$BabyDataTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<DateTime> birthDate = const Value.absent(),
            Value<DateTime> birthTime = const Value.absent(),
            Value<BabySex> babySex = const Value.absent(),
            Value<int> weekGestationAge = const Value.absent(),
            Value<int> dayGestationAge = const Value.absent(),
            Value<double> weight = const Value.absent(),
            Value<double> height = const Value.absent(),
            Value<double> headCircumference = const Value.absent(),
            Value<int> firstMinuteApgar = const Value.absent(),
            Value<int> fifthMinuteApgar = const Value.absent(),
            Value<BirthType> birthType = const Value.absent(),
            Value<bool> instrumentedBirth = const Value.absent(),
            Value<bool> inducedLabor = const Value.absent(),
          }) =>
              BabyDataCompanion(
            id: id,
            name: name,
            birthDate: birthDate,
            birthTime: birthTime,
            babySex: babySex,
            weekGestationAge: weekGestationAge,
            dayGestationAge: dayGestationAge,
            weight: weight,
            height: height,
            headCircumference: headCircumference,
            firstMinuteApgar: firstMinuteApgar,
            fifthMinuteApgar: fifthMinuteApgar,
            birthType: birthType,
            instrumentedBirth: instrumentedBirth,
            inducedLabor: inducedLabor,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            required DateTime birthDate,
            required DateTime birthTime,
            required BabySex babySex,
            required int weekGestationAge,
            required int dayGestationAge,
            required double weight,
            required double height,
            required double headCircumference,
            required int firstMinuteApgar,
            required int fifthMinuteApgar,
            required BirthType birthType,
            required bool instrumentedBirth,
            required bool inducedLabor,
          }) =>
              BabyDataCompanion.insert(
            id: id,
            name: name,
            birthDate: birthDate,
            birthTime: birthTime,
            babySex: babySex,
            weekGestationAge: weekGestationAge,
            dayGestationAge: dayGestationAge,
            weight: weight,
            height: height,
            headCircumference: headCircumference,
            firstMinuteApgar: firstMinuteApgar,
            fifthMinuteApgar: fifthMinuteApgar,
            birthType: birthType,
            instrumentedBirth: instrumentedBirth,
            inducedLabor: inducedLabor,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$BabyDataTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $BabyDataTable,
    BabyDataData,
    $$BabyDataTableFilterComposer,
    $$BabyDataTableOrderingComposer,
    $$BabyDataTableAnnotationComposer,
    $$BabyDataTableCreateCompanionBuilder,
    $$BabyDataTableUpdateCompanionBuilder,
    (BabyDataData, BaseReferences<_$AppDatabase, $BabyDataTable, BabyDataData>),
    BabyDataData,
    PrefetchHooks Function()>;
typedef $$MaternityTableCreateCompanionBuilder = MaternityCompanion Function({
  Value<int> id,
  required String name,
  required bool shareData,
});
typedef $$MaternityTableUpdateCompanionBuilder = MaternityCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<bool> shareData,
});

class $$MaternityTableFilterComposer
    extends Composer<_$AppDatabase, $MaternityTable> {
  $$MaternityTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get shareData => $composableBuilder(
      column: $table.shareData, builder: (column) => ColumnFilters(column));
}

class $$MaternityTableOrderingComposer
    extends Composer<_$AppDatabase, $MaternityTable> {
  $$MaternityTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get shareData => $composableBuilder(
      column: $table.shareData, builder: (column) => ColumnOrderings(column));
}

class $$MaternityTableAnnotationComposer
    extends Composer<_$AppDatabase, $MaternityTable> {
  $$MaternityTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<bool> get shareData =>
      $composableBuilder(column: $table.shareData, builder: (column) => column);
}

class $$MaternityTableTableManager extends RootTableManager<
    _$AppDatabase,
    $MaternityTable,
    MaternityData,
    $$MaternityTableFilterComposer,
    $$MaternityTableOrderingComposer,
    $$MaternityTableAnnotationComposer,
    $$MaternityTableCreateCompanionBuilder,
    $$MaternityTableUpdateCompanionBuilder,
    (
      MaternityData,
      BaseReferences<_$AppDatabase, $MaternityTable, MaternityData>
    ),
    MaternityData,
    PrefetchHooks Function()> {
  $$MaternityTableTableManager(_$AppDatabase db, $MaternityTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MaternityTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MaternityTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MaternityTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<bool> shareData = const Value.absent(),
          }) =>
              MaternityCompanion(
            id: id,
            name: name,
            shareData: shareData,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            required bool shareData,
          }) =>
              MaternityCompanion.insert(
            id: id,
            name: name,
            shareData: shareData,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$MaternityTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $MaternityTable,
    MaternityData,
    $$MaternityTableFilterComposer,
    $$MaternityTableOrderingComposer,
    $$MaternityTableAnnotationComposer,
    $$MaternityTableCreateCompanionBuilder,
    $$MaternityTableUpdateCompanionBuilder,
    (
      MaternityData,
      BaseReferences<_$AppDatabase, $MaternityTable, MaternityData>
    ),
    MaternityData,
    PrefetchHooks Function()>;
typedef $$PregnantTableCreateCompanionBuilder = PregnantCompanion Function({
  Value<int> id,
  required String name,
  Value<String?> socialName,
  required String birthDate,
  required String cpf,
  Value<String?> nationalHealthCardNumber,
  Value<String?> preNatalPlace,
  Value<String?> profissionalName,
  Value<String?> prenatalPlaceContact,
});
typedef $$PregnantTableUpdateCompanionBuilder = PregnantCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<String?> socialName,
  Value<String> birthDate,
  Value<String> cpf,
  Value<String?> nationalHealthCardNumber,
  Value<String?> preNatalPlace,
  Value<String?> profissionalName,
  Value<String?> prenatalPlaceContact,
});

class $$PregnantTableFilterComposer
    extends Composer<_$AppDatabase, $PregnantTable> {
  $$PregnantTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get socialName => $composableBuilder(
      column: $table.socialName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get birthDate => $composableBuilder(
      column: $table.birthDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get cpf => $composableBuilder(
      column: $table.cpf, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get nationalHealthCardNumber => $composableBuilder(
      column: $table.nationalHealthCardNumber,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get preNatalPlace => $composableBuilder(
      column: $table.preNatalPlace, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get profissionalName => $composableBuilder(
      column: $table.profissionalName,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get prenatalPlaceContact => $composableBuilder(
      column: $table.prenatalPlaceContact,
      builder: (column) => ColumnFilters(column));
}

class $$PregnantTableOrderingComposer
    extends Composer<_$AppDatabase, $PregnantTable> {
  $$PregnantTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get socialName => $composableBuilder(
      column: $table.socialName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get birthDate => $composableBuilder(
      column: $table.birthDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get cpf => $composableBuilder(
      column: $table.cpf, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get nationalHealthCardNumber => $composableBuilder(
      column: $table.nationalHealthCardNumber,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get preNatalPlace => $composableBuilder(
      column: $table.preNatalPlace,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get profissionalName => $composableBuilder(
      column: $table.profissionalName,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get prenatalPlaceContact => $composableBuilder(
      column: $table.prenatalPlaceContact,
      builder: (column) => ColumnOrderings(column));
}

class $$PregnantTableAnnotationComposer
    extends Composer<_$AppDatabase, $PregnantTable> {
  $$PregnantTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get socialName => $composableBuilder(
      column: $table.socialName, builder: (column) => column);

  GeneratedColumn<String> get birthDate =>
      $composableBuilder(column: $table.birthDate, builder: (column) => column);

  GeneratedColumn<String> get cpf =>
      $composableBuilder(column: $table.cpf, builder: (column) => column);

  GeneratedColumn<String> get nationalHealthCardNumber => $composableBuilder(
      column: $table.nationalHealthCardNumber, builder: (column) => column);

  GeneratedColumn<String> get preNatalPlace => $composableBuilder(
      column: $table.preNatalPlace, builder: (column) => column);

  GeneratedColumn<String> get profissionalName => $composableBuilder(
      column: $table.profissionalName, builder: (column) => column);

  GeneratedColumn<String> get prenatalPlaceContact => $composableBuilder(
      column: $table.prenatalPlaceContact, builder: (column) => column);
}

class $$PregnantTableTableManager extends RootTableManager<
    _$AppDatabase,
    $PregnantTable,
    PregnantData,
    $$PregnantTableFilterComposer,
    $$PregnantTableOrderingComposer,
    $$PregnantTableAnnotationComposer,
    $$PregnantTableCreateCompanionBuilder,
    $$PregnantTableUpdateCompanionBuilder,
    (PregnantData, BaseReferences<_$AppDatabase, $PregnantTable, PregnantData>),
    PregnantData,
    PrefetchHooks Function()> {
  $$PregnantTableTableManager(_$AppDatabase db, $PregnantTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PregnantTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PregnantTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PregnantTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String?> socialName = const Value.absent(),
            Value<String> birthDate = const Value.absent(),
            Value<String> cpf = const Value.absent(),
            Value<String?> nationalHealthCardNumber = const Value.absent(),
            Value<String?> preNatalPlace = const Value.absent(),
            Value<String?> profissionalName = const Value.absent(),
            Value<String?> prenatalPlaceContact = const Value.absent(),
          }) =>
              PregnantCompanion(
            id: id,
            name: name,
            socialName: socialName,
            birthDate: birthDate,
            cpf: cpf,
            nationalHealthCardNumber: nationalHealthCardNumber,
            preNatalPlace: preNatalPlace,
            profissionalName: profissionalName,
            prenatalPlaceContact: prenatalPlaceContact,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            Value<String?> socialName = const Value.absent(),
            required String birthDate,
            required String cpf,
            Value<String?> nationalHealthCardNumber = const Value.absent(),
            Value<String?> preNatalPlace = const Value.absent(),
            Value<String?> profissionalName = const Value.absent(),
            Value<String?> prenatalPlaceContact = const Value.absent(),
          }) =>
              PregnantCompanion.insert(
            id: id,
            name: name,
            socialName: socialName,
            birthDate: birthDate,
            cpf: cpf,
            nationalHealthCardNumber: nationalHealthCardNumber,
            preNatalPlace: preNatalPlace,
            profissionalName: profissionalName,
            prenatalPlaceContact: prenatalPlaceContact,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$PregnantTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $PregnantTable,
    PregnantData,
    $$PregnantTableFilterComposer,
    $$PregnantTableOrderingComposer,
    $$PregnantTableAnnotationComposer,
    $$PregnantTableCreateCompanionBuilder,
    $$PregnantTableUpdateCompanionBuilder,
    (PregnantData, BaseReferences<_$AppDatabase, $PregnantTable, PregnantData>),
    PregnantData,
    PrefetchHooks Function()>;
typedef $$PrenatalAppointmentTableCreateCompanionBuilder
    = PrenatalAppointmentCompanion Function({
  Value<int> id,
  required DateTime appointmentDate,
  required String observations,
});
typedef $$PrenatalAppointmentTableUpdateCompanionBuilder
    = PrenatalAppointmentCompanion Function({
  Value<int> id,
  Value<DateTime> appointmentDate,
  Value<String> observations,
});

class $$PrenatalAppointmentTableFilterComposer
    extends Composer<_$AppDatabase, $PrenatalAppointmentTable> {
  $$PrenatalAppointmentTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get appointmentDate => $composableBuilder(
      column: $table.appointmentDate,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get observations => $composableBuilder(
      column: $table.observations, builder: (column) => ColumnFilters(column));
}

class $$PrenatalAppointmentTableOrderingComposer
    extends Composer<_$AppDatabase, $PrenatalAppointmentTable> {
  $$PrenatalAppointmentTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get appointmentDate => $composableBuilder(
      column: $table.appointmentDate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get observations => $composableBuilder(
      column: $table.observations,
      builder: (column) => ColumnOrderings(column));
}

class $$PrenatalAppointmentTableAnnotationComposer
    extends Composer<_$AppDatabase, $PrenatalAppointmentTable> {
  $$PrenatalAppointmentTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get appointmentDate => $composableBuilder(
      column: $table.appointmentDate, builder: (column) => column);

  GeneratedColumn<String> get observations => $composableBuilder(
      column: $table.observations, builder: (column) => column);
}

class $$PrenatalAppointmentTableTableManager extends RootTableManager<
    _$AppDatabase,
    $PrenatalAppointmentTable,
    PrenatalAppointmentData,
    $$PrenatalAppointmentTableFilterComposer,
    $$PrenatalAppointmentTableOrderingComposer,
    $$PrenatalAppointmentTableAnnotationComposer,
    $$PrenatalAppointmentTableCreateCompanionBuilder,
    $$PrenatalAppointmentTableUpdateCompanionBuilder,
    (
      PrenatalAppointmentData,
      BaseReferences<_$AppDatabase, $PrenatalAppointmentTable,
          PrenatalAppointmentData>
    ),
    PrenatalAppointmentData,
    PrefetchHooks Function()> {
  $$PrenatalAppointmentTableTableManager(
      _$AppDatabase db, $PrenatalAppointmentTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PrenatalAppointmentTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PrenatalAppointmentTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PrenatalAppointmentTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<DateTime> appointmentDate = const Value.absent(),
            Value<String> observations = const Value.absent(),
          }) =>
              PrenatalAppointmentCompanion(
            id: id,
            appointmentDate: appointmentDate,
            observations: observations,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required DateTime appointmentDate,
            required String observations,
          }) =>
              PrenatalAppointmentCompanion.insert(
            id: id,
            appointmentDate: appointmentDate,
            observations: observations,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$PrenatalAppointmentTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $PrenatalAppointmentTable,
    PrenatalAppointmentData,
    $$PrenatalAppointmentTableFilterComposer,
    $$PrenatalAppointmentTableOrderingComposer,
    $$PrenatalAppointmentTableAnnotationComposer,
    $$PrenatalAppointmentTableCreateCompanionBuilder,
    $$PrenatalAppointmentTableUpdateCompanionBuilder,
    (
      PrenatalAppointmentData,
      BaseReferences<_$AppDatabase, $PrenatalAppointmentTable,
          PrenatalAppointmentData>
    ),
    PrenatalAppointmentData,
    PrefetchHooks Function()>;
typedef $$UserTableCreateCompanionBuilder = UserCompanion Function({
  Value<int> id,
  required String email,
  Value<MaritalStatus?> maritalStatus,
  Value<Education?> education,
  Value<FamilyIncome?> familyIncome,
});
typedef $$UserTableUpdateCompanionBuilder = UserCompanion Function({
  Value<int> id,
  Value<String> email,
  Value<MaritalStatus?> maritalStatus,
  Value<Education?> education,
  Value<FamilyIncome?> familyIncome,
});

class $$UserTableFilterComposer extends Composer<_$AppDatabase, $UserTable> {
  $$UserTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<MaritalStatus?, MaritalStatus, int>
      get maritalStatus => $composableBuilder(
          column: $table.maritalStatus,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<Education?, Education, int> get education =>
      $composableBuilder(
          column: $table.education,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<FamilyIncome?, FamilyIncome, int>
      get familyIncome => $composableBuilder(
          column: $table.familyIncome,
          builder: (column) => ColumnWithTypeConverterFilters(column));
}

class $$UserTableOrderingComposer extends Composer<_$AppDatabase, $UserTable> {
  $$UserTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get maritalStatus => $composableBuilder(
      column: $table.maritalStatus,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get education => $composableBuilder(
      column: $table.education, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get familyIncome => $composableBuilder(
      column: $table.familyIncome,
      builder: (column) => ColumnOrderings(column));
}

class $$UserTableAnnotationComposer
    extends Composer<_$AppDatabase, $UserTable> {
  $$UserTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumnWithTypeConverter<MaritalStatus?, int> get maritalStatus =>
      $composableBuilder(
          column: $table.maritalStatus, builder: (column) => column);

  GeneratedColumnWithTypeConverter<Education?, int> get education =>
      $composableBuilder(column: $table.education, builder: (column) => column);

  GeneratedColumnWithTypeConverter<FamilyIncome?, int> get familyIncome =>
      $composableBuilder(
          column: $table.familyIncome, builder: (column) => column);
}

class $$UserTableTableManager extends RootTableManager<
    _$AppDatabase,
    $UserTable,
    UserData,
    $$UserTableFilterComposer,
    $$UserTableOrderingComposer,
    $$UserTableAnnotationComposer,
    $$UserTableCreateCompanionBuilder,
    $$UserTableUpdateCompanionBuilder,
    (UserData, BaseReferences<_$AppDatabase, $UserTable, UserData>),
    UserData,
    PrefetchHooks Function()> {
  $$UserTableTableManager(_$AppDatabase db, $UserTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UserTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UserTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UserTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> email = const Value.absent(),
            Value<MaritalStatus?> maritalStatus = const Value.absent(),
            Value<Education?> education = const Value.absent(),
            Value<FamilyIncome?> familyIncome = const Value.absent(),
          }) =>
              UserCompanion(
            id: id,
            email: email,
            maritalStatus: maritalStatus,
            education: education,
            familyIncome: familyIncome,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String email,
            Value<MaritalStatus?> maritalStatus = const Value.absent(),
            Value<Education?> education = const Value.absent(),
            Value<FamilyIncome?> familyIncome = const Value.absent(),
          }) =>
              UserCompanion.insert(
            id: id,
            email: email,
            maritalStatus: maritalStatus,
            education: education,
            familyIncome: familyIncome,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$UserTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $UserTable,
    UserData,
    $$UserTableFilterComposer,
    $$UserTableOrderingComposer,
    $$UserTableAnnotationComposer,
    $$UserTableCreateCompanionBuilder,
    $$UserTableUpdateCompanionBuilder,
    (UserData, BaseReferences<_$AppDatabase, $UserTable, UserData>),
    UserData,
    PrefetchHooks Function()>;
typedef $$AppointmentsTableCreateCompanionBuilder = AppointmentsCompanion
    Function({
  Value<int> id,
  required String title,
  required String appointmentDate,
  required String description,
});
typedef $$AppointmentsTableUpdateCompanionBuilder = AppointmentsCompanion
    Function({
  Value<int> id,
  Value<String> title,
  Value<String> appointmentDate,
  Value<String> description,
});

class $$AppointmentsTableFilterComposer
    extends Composer<_$AppDatabase, $AppointmentsTable> {
  $$AppointmentsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get appointmentDate => $composableBuilder(
      column: $table.appointmentDate,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));
}

class $$AppointmentsTableOrderingComposer
    extends Composer<_$AppDatabase, $AppointmentsTable> {
  $$AppointmentsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get appointmentDate => $composableBuilder(
      column: $table.appointmentDate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));
}

class $$AppointmentsTableAnnotationComposer
    extends Composer<_$AppDatabase, $AppointmentsTable> {
  $$AppointmentsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get appointmentDate => $composableBuilder(
      column: $table.appointmentDate, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);
}

class $$AppointmentsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $AppointmentsTable,
    Appointment,
    $$AppointmentsTableFilterComposer,
    $$AppointmentsTableOrderingComposer,
    $$AppointmentsTableAnnotationComposer,
    $$AppointmentsTableCreateCompanionBuilder,
    $$AppointmentsTableUpdateCompanionBuilder,
    (
      Appointment,
      BaseReferences<_$AppDatabase, $AppointmentsTable, Appointment>
    ),
    Appointment,
    PrefetchHooks Function()> {
  $$AppointmentsTableTableManager(_$AppDatabase db, $AppointmentsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AppointmentsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AppointmentsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AppointmentsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<String> appointmentDate = const Value.absent(),
            Value<String> description = const Value.absent(),
          }) =>
              AppointmentsCompanion(
            id: id,
            title: title,
            appointmentDate: appointmentDate,
            description: description,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String title,
            required String appointmentDate,
            required String description,
          }) =>
              AppointmentsCompanion.insert(
            id: id,
            title: title,
            appointmentDate: appointmentDate,
            description: description,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$AppointmentsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $AppointmentsTable,
    Appointment,
    $$AppointmentsTableFilterComposer,
    $$AppointmentsTableOrderingComposer,
    $$AppointmentsTableAnnotationComposer,
    $$AppointmentsTableCreateCompanionBuilder,
    $$AppointmentsTableUpdateCompanionBuilder,
    (
      Appointment,
      BaseReferences<_$AppDatabase, $AppointmentsTable, Appointment>
    ),
    Appointment,
    PrefetchHooks Function()>;
typedef $$ExamsTableCreateCompanionBuilder = ExamsCompanion Function({
  Value<int> id,
  required String title,
  required String examDate,
  required String description,
});
typedef $$ExamsTableUpdateCompanionBuilder = ExamsCompanion Function({
  Value<int> id,
  Value<String> title,
  Value<String> examDate,
  Value<String> description,
});

class $$ExamsTableFilterComposer extends Composer<_$AppDatabase, $ExamsTable> {
  $$ExamsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get examDate => $composableBuilder(
      column: $table.examDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));
}

class $$ExamsTableOrderingComposer
    extends Composer<_$AppDatabase, $ExamsTable> {
  $$ExamsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get examDate => $composableBuilder(
      column: $table.examDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));
}

class $$ExamsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ExamsTable> {
  $$ExamsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get examDate =>
      $composableBuilder(column: $table.examDate, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);
}

class $$ExamsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ExamsTable,
    Exam,
    $$ExamsTableFilterComposer,
    $$ExamsTableOrderingComposer,
    $$ExamsTableAnnotationComposer,
    $$ExamsTableCreateCompanionBuilder,
    $$ExamsTableUpdateCompanionBuilder,
    (Exam, BaseReferences<_$AppDatabase, $ExamsTable, Exam>),
    Exam,
    PrefetchHooks Function()> {
  $$ExamsTableTableManager(_$AppDatabase db, $ExamsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ExamsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ExamsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ExamsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<String> examDate = const Value.absent(),
            Value<String> description = const Value.absent(),
          }) =>
              ExamsCompanion(
            id: id,
            title: title,
            examDate: examDate,
            description: description,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String title,
            required String examDate,
            required String description,
          }) =>
              ExamsCompanion.insert(
            id: id,
            title: title,
            examDate: examDate,
            description: description,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ExamsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ExamsTable,
    Exam,
    $$ExamsTableFilterComposer,
    $$ExamsTableOrderingComposer,
    $$ExamsTableAnnotationComposer,
    $$ExamsTableCreateCompanionBuilder,
    $$ExamsTableUpdateCompanionBuilder,
    (Exam, BaseReferences<_$AppDatabase, $ExamsTable, Exam>),
    Exam,
    PrefetchHooks Function()>;
typedef $$MedicationsTableCreateCompanionBuilder = MedicationsCompanion
    Function({
  Value<int> id,
  required String name,
  required String dose,
  required String medicationTime,
});
typedef $$MedicationsTableUpdateCompanionBuilder = MedicationsCompanion
    Function({
  Value<int> id,
  Value<String> name,
  Value<String> dose,
  Value<String> medicationTime,
});

class $$MedicationsTableFilterComposer
    extends Composer<_$AppDatabase, $MedicationsTable> {
  $$MedicationsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get dose => $composableBuilder(
      column: $table.dose, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get medicationTime => $composableBuilder(
      column: $table.medicationTime,
      builder: (column) => ColumnFilters(column));
}

class $$MedicationsTableOrderingComposer
    extends Composer<_$AppDatabase, $MedicationsTable> {
  $$MedicationsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get dose => $composableBuilder(
      column: $table.dose, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get medicationTime => $composableBuilder(
      column: $table.medicationTime,
      builder: (column) => ColumnOrderings(column));
}

class $$MedicationsTableAnnotationComposer
    extends Composer<_$AppDatabase, $MedicationsTable> {
  $$MedicationsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get dose =>
      $composableBuilder(column: $table.dose, builder: (column) => column);

  GeneratedColumn<String> get medicationTime => $composableBuilder(
      column: $table.medicationTime, builder: (column) => column);
}

class $$MedicationsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $MedicationsTable,
    Medication,
    $$MedicationsTableFilterComposer,
    $$MedicationsTableOrderingComposer,
    $$MedicationsTableAnnotationComposer,
    $$MedicationsTableCreateCompanionBuilder,
    $$MedicationsTableUpdateCompanionBuilder,
    (Medication, BaseReferences<_$AppDatabase, $MedicationsTable, Medication>),
    Medication,
    PrefetchHooks Function()> {
  $$MedicationsTableTableManager(_$AppDatabase db, $MedicationsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MedicationsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MedicationsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MedicationsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> dose = const Value.absent(),
            Value<String> medicationTime = const Value.absent(),
          }) =>
              MedicationsCompanion(
            id: id,
            name: name,
            dose: dose,
            medicationTime: medicationTime,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            required String dose,
            required String medicationTime,
          }) =>
              MedicationsCompanion.insert(
            id: id,
            name: name,
            dose: dose,
            medicationTime: medicationTime,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$MedicationsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $MedicationsTable,
    Medication,
    $$MedicationsTableFilterComposer,
    $$MedicationsTableOrderingComposer,
    $$MedicationsTableAnnotationComposer,
    $$MedicationsTableCreateCompanionBuilder,
    $$MedicationsTableUpdateCompanionBuilder,
    (Medication, BaseReferences<_$AppDatabase, $MedicationsTable, Medication>),
    Medication,
    PrefetchHooks Function()>;
typedef $$VaccineTableCreateCompanionBuilder = VaccineCompanion Function({
  Value<int> id,
  required String name,
  required bool used,
});
typedef $$VaccineTableUpdateCompanionBuilder = VaccineCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<bool> used,
});

class $$VaccineTableFilterComposer
    extends Composer<_$AppDatabase, $VaccineTable> {
  $$VaccineTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get used => $composableBuilder(
      column: $table.used, builder: (column) => ColumnFilters(column));
}

class $$VaccineTableOrderingComposer
    extends Composer<_$AppDatabase, $VaccineTable> {
  $$VaccineTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get used => $composableBuilder(
      column: $table.used, builder: (column) => ColumnOrderings(column));
}

class $$VaccineTableAnnotationComposer
    extends Composer<_$AppDatabase, $VaccineTable> {
  $$VaccineTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<bool> get used =>
      $composableBuilder(column: $table.used, builder: (column) => column);
}

class $$VaccineTableTableManager extends RootTableManager<
    _$AppDatabase,
    $VaccineTable,
    VaccineData,
    $$VaccineTableFilterComposer,
    $$VaccineTableOrderingComposer,
    $$VaccineTableAnnotationComposer,
    $$VaccineTableCreateCompanionBuilder,
    $$VaccineTableUpdateCompanionBuilder,
    (VaccineData, BaseReferences<_$AppDatabase, $VaccineTable, VaccineData>),
    VaccineData,
    PrefetchHooks Function()> {
  $$VaccineTableTableManager(_$AppDatabase db, $VaccineTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$VaccineTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$VaccineTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$VaccineTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<bool> used = const Value.absent(),
          }) =>
              VaccineCompanion(
            id: id,
            name: name,
            used: used,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            required bool used,
          }) =>
              VaccineCompanion.insert(
            id: id,
            name: name,
            used: used,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$VaccineTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $VaccineTable,
    VaccineData,
    $$VaccineTableFilterComposer,
    $$VaccineTableOrderingComposer,
    $$VaccineTableAnnotationComposer,
    $$VaccineTableCreateCompanionBuilder,
    $$VaccineTableUpdateCompanionBuilder,
    (VaccineData, BaseReferences<_$AppDatabase, $VaccineTable, VaccineData>),
    VaccineData,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$BirthTableTableManager get birth =>
      $$BirthTableTableManager(_db, _db.birth);
  $$BirthMomentTableTableManager get birthMoment =>
      $$BirthMomentTableTableManager(_db, _db.birthMoment);
  $$CurrentPregnancyTableTableManager get currentPregnancy =>
      $$CurrentPregnancyTableTableManager(_db, _db.currentPregnancy);
  $$ExpectationsTableTableManager get expectations =>
      $$ExpectationsTableTableManager(_db, _db.expectations);
  $$ObservationsTableTableManager get observations =>
      $$ObservationsTableTableManager(_db, _db.observations);
  $$PainReliefTableTableManager get painRelief =>
      $$PainReliefTableTableManager(_db, _db.painRelief);
  $$PreviousPregnanciesTableTableManager get previousPregnancies =>
      $$PreviousPregnanciesTableTableManager(_db, _db.previousPregnancies);
  $$BabyDataTableTableManager get babyData =>
      $$BabyDataTableTableManager(_db, _db.babyData);
  $$MaternityTableTableManager get maternity =>
      $$MaternityTableTableManager(_db, _db.maternity);
  $$PregnantTableTableManager get pregnant =>
      $$PregnantTableTableManager(_db, _db.pregnant);
  $$PrenatalAppointmentTableTableManager get prenatalAppointment =>
      $$PrenatalAppointmentTableTableManager(_db, _db.prenatalAppointment);
  $$UserTableTableManager get user => $$UserTableTableManager(_db, _db.user);
  $$AppointmentsTableTableManager get appointments =>
      $$AppointmentsTableTableManager(_db, _db.appointments);
  $$ExamsTableTableManager get exams =>
      $$ExamsTableTableManager(_db, _db.exams);
  $$MedicationsTableTableManager get medications =>
      $$MedicationsTableTableManager(_db, _db.medications);
  $$VaccineTableTableManager get vaccine =>
      $$VaccineTableTableManager(_db, _db.vaccine);
}
