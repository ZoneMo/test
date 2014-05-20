.class public final Lcom/tencent/mm/w/g;
.super Lcom/tencent/mm/sdk/e/ai;
.source "SourceFile"


# static fields
.field public static final cjC:[Ljava/lang/String;


# instance fields
.field private cjB:Lcom/tencent/mm/ap/i;

.field private ctg:Lcom/tencent/mm/a/d;

.field private cth:Ljava/util/List;

.field private cti:Ljava/util/Map;

.field private ctj:Ljava/util/Set;

.field private ctk:Landroid/os/Handler;

.field private ctl:Ljava/util/Map;

.field private ctm:I

.field private ctn:Ljava/lang/ref/SoftReference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CREATE TABLE IF NOT EXISTS ImgInfo ( id INTEGER PRIMARY KEY, msgSvrId INT, offset INT, totalLen INT, bigImgPath TEXT, thumbImgPath TEXT )"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CREATE TABLE IF NOT EXISTS ImgInfo2 ( id INTEGER PRIMARY KEY, msgSvrId INT, offset INT, totalLen INT, bigImgPath TEXT, thumbImgPath TEXT, createtime INT, msglocalid INT, status INT, nettimes INT, reserved1 int  , reserved2 int  , reserved3 text  , reserved4 text  ) "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CREATE INDEX IF NOT EXISTS  serverImgInfoIndex ON ImgInfo2 ( msgSvrId ) "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "CREATE INDEX IF NOT EXISTS  serverImgInfoHdIndex ON ImgInfo2 ( reserved1 ) "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "insert into imginfo2 (id,msgSvrId , offset , totalLen , bigImgPath , thumbImgPath) select id, msgSvrId, offset ,totallen , bigimgpath , thumbimgpath from imginfo; "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "delete from ImgInfo ; "

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/mm/w/g;->cjC:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/ap/i;)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 119
    invoke-direct {p0}, Lcom/tencent/mm/sdk/e/ai;-><init>()V

    .line 91
    new-instance v0, Lcom/tencent/mm/a/d;

    const/16 v1, 0x28

    new-instance v3, Lcom/tencent/mm/w/h;

    invoke-direct {v3, p0}, Lcom/tencent/mm/w/h;-><init>(Lcom/tencent/mm/w/g;)V

    invoke-direct {v0, v1, v3}, Lcom/tencent/mm/a/d;-><init>(ILcom/tencent/mm/a/e;)V

    iput-object v0, p0, Lcom/tencent/mm/w/g;->ctg:Lcom/tencent/mm/a/d;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/w/g;->cth:Ljava/util/List;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/w/g;->cti:Ljava/util/Map;

    .line 112
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/w/g;->ctj:Ljava/util/Set;

    .line 113
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/mm/w/g;->ctk:Landroid/os/Handler;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/w/g;->ctl:Ljava/util/Map;

    .line 116
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/mm/w/g;->ctm:I

    .line 117
    iput-object v2, p0, Lcom/tencent/mm/w/g;->cjB:Lcom/tencent/mm/ap/i;

    .line 120
    iput-object p1, p0, Lcom/tencent/mm/w/g;->cjB:Lcom/tencent/mm/ap/i;

    .line 121
    iget-object v0, p0, Lcom/tencent/mm/w/g;->cjB:Lcom/tencent/mm/ap/i;

    const-string v1, "ImgInfo2"

    const-string v6, "id ASC "

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/mm/ap/i;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 122
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/mm/w/g;->ctm:I

    .line 125
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 126
    const-string v0, "MicroMsg.ImgInfoStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loading new img id:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/mm/w/g;->ctm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/w/g;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tencent/mm/w/g;->ctk:Landroid/os/Handler;

    return-object v0
.end method

.method private a(Ljava/lang/String;IZIILcom/tencent/mm/pointers/PInt;Lcom/tencent/mm/pointers/PInt;Ljava/lang/String;)Lcom/tencent/mm/w/e;
    .locals 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 795
    invoke-static/range {p1 .. p1}, Lcom/tencent/mm/a/c;->as(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 796
    const/4 v1, 0x0

    .line 967
    :goto_0
    return-object v1

    .line 800
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/tencent/mm/sdk/platformtools/f;->hH(Ljava/lang/String;)I

    move-result v1

    .line 801
    mul-int/lit8 v2, p5, 0x5a

    add-int v10, v1, v2

    .line 806
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/a/f;->h([B)Ljava/lang/String;

    move-result-object v15

    .line 807
    const-string v1, ""

    const-string v2, ".jpg"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v1, v2}, Lcom/tencent/mm/w/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 809
    const-string v1, "MicroMsg.ImgInfoStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "insert : original img path = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    invoke-static/range {p1 .. p1}, Lcom/tencent/mm/sdk/platformtools/h;->ss(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v7

    .line 812
    const/4 v5, 0x0

    .line 814
    :try_start_0
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/ba;->bt(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 815
    invoke-static {}, Lcom/tencent/mm/e/d;->qA()Lcom/tencent/mm/e/c;

    move-result-object v1

    const-string v2, "CompressPicLevelForWifi"

    invoke-virtual {v1, v2}, Lcom/tencent/mm/e/c;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 826
    :goto_1
    const/16 v1, 0xa

    if-le v5, v1, :cond_1

    const/16 v1, 0x64

    if-le v5, v1, :cond_2

    .line 827
    :cond_1
    const/16 v5, 0x46

    .line 830
    :cond_2
    const/4 v2, 0x0

    .line 831
    const/4 v1, 0x0

    .line 834
    :try_start_1
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/sdk/platformtools/ba;->bt(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 835
    invoke-static {}, Lcom/tencent/mm/e/d;->qA()Lcom/tencent/mm/e/c;

    move-result-object v3

    const-string v4, "CompressResolutionForWifi"

    invoke-virtual {v3, v4}, Lcom/tencent/mm/e/c;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 841
    :goto_2
    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 842
    const/4 v8, -0x1

    if-eq v8, v4, :cond_3

    .line 843
    const/4 v8, 0x0

    invoke-virtual {v3, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 844
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :cond_3
    move/from16 v16, v1

    move v1, v2

    move/from16 v2, v16

    .line 849
    :goto_3
    if-gtz v1, :cond_4

    .line 850
    const/16 v1, 0x3c0

    .line 853
    :cond_4
    if-gtz v2, :cond_5

    .line 854
    const/16 v2, 0x3c0

    .line 857
    :cond_5
    if-ge v1, v2, :cond_20

    .line 863
    :goto_4
    if-eqz p3, :cond_d

    .line 864
    const/4 v4, 0x0

    .line 865
    const/4 v3, 0x0

    .line 866
    if-eqz v7, :cond_6

    .line 867
    iget v3, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 868
    iget v4, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 869
    if-ge v3, v4, :cond_1f

    .line 876
    :cond_6
    :goto_5
    if-nez p2, :cond_13

    invoke-static/range {p1 .. p1}, Lcom/tencent/mm/a/c;->ar(Ljava/lang/String;)I

    move-result v8

    const v9, 0x32000

    if-gt v8, v9, :cond_7

    if-eqz v7, :cond_13

    if-gt v3, v1, :cond_7

    if-le v4, v2, :cond_13

    .line 879
    :cond_7
    if-eqz v7, :cond_1e

    .line 880
    iget v3, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ge v3, v4, :cond_1e

    move v3, v1

    .line 887
    :goto_6
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lcom/tencent/mm/sdk/platformtools/h;->a(Ljava/lang/String;IILandroid/graphics/Bitmap$CompressFormat;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 888
    const-string v1, "MicroMsg.ImgInfoStorage"

    const-string v2, "createThumbNail big pic fail"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 816
    :cond_8
    :try_start_2
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/ba;->bp(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 817
    invoke-static {}, Lcom/tencent/mm/e/d;->qA()Lcom/tencent/mm/e/c;

    move-result-object v1

    const-string v2, "CompressPicLevelFor2G"

    invoke-virtual {v1, v2}, Lcom/tencent/mm/e/c;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto/16 :goto_1

    .line 819
    :cond_9
    invoke-static {}, Lcom/tencent/mm/e/d;->qA()Lcom/tencent/mm/e/c;

    move-result-object v1

    const-string v2, "CompressPicLevelFor3G"

    invoke-virtual {v1, v2}, Lcom/tencent/mm/e/c;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v5

    goto/16 :goto_1

    .line 836
    :cond_a
    :try_start_3
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/sdk/platformtools/ba;->bp(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 837
    invoke-static {}, Lcom/tencent/mm/e/d;->qA()Lcom/tencent/mm/e/c;

    move-result-object v3

    const-string v4, "CompressResolutionFor2G"

    invoke-virtual {v3, v4}, Lcom/tencent/mm/e/c;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 839
    :cond_b
    invoke-static {}, Lcom/tencent/mm/e/d;->qA()Lcom/tencent/mm/e/c;

    move-result-object v3

    const-string v4, "CompressResolutionFor3G"

    invoke-virtual {v3, v4}, Lcom/tencent/mm/e/c;->getValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v3

    goto/16 :goto_2

    .line 846
    :catch_0
    move-exception v3

    move/from16 v16, v1

    move v1, v2

    move/from16 v2, v16

    goto/16 :goto_3

    .line 891
    :cond_c
    invoke-static {v6}, Lcom/tencent/mm/sdk/platformtools/h;->ss(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v4

    .line 892
    const-string v8, "MicroMsg.ImgInfoStorage"

    const-string v9, "createThumbNail big pic ok, comLev:%d width:%d height:%d origLen:%d compressedLen:%d oriWidth:%d oriHeight:%d comWidth:%d comHeight:%d"

    const/16 v1, 0x9

    new-array v11, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v11, v1

    const/4 v1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v11, v1

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v11, v1

    const/4 v1, 0x3

    invoke-static/range {p1 .. p1}, Lcom/tencent/mm/a/c;->ar(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v11, v1

    const/4 v1, 0x4

    invoke-static {v6}, Lcom/tencent/mm/a/c;->ar(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v11, v1

    const/4 v2, 0x5

    if-eqz v7, :cond_f

    iget v1, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v11, v2

    const/4 v2, 0x6

    if-eqz v7, :cond_10

    iget v1, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v11, v2

    const/4 v2, 0x7

    if-eqz v4, :cond_11

    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v11, v2

    const/16 v2, 0x8

    if-eqz v4, :cond_12

    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v11, v2

    invoke-static {v8, v9, v11}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 904
    :cond_d
    :goto_b
    const-string v1, "MicroMsg.ImgInfoStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "insert: compressed bigImgPath = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    invoke-static {v6}, Lcom/tencent/mm/model/v;->cn(Ljava/lang/String;)Z

    move-result v1

    .line 909
    if-nez v1, :cond_e

    if-nez p2, :cond_16

    :cond_e
    if-eqz p3, :cond_16

    .line 910
    if-eqz v10, :cond_16

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-static {v6, v10, v1, v2, v6}, Lcom/tencent/mm/sdk/platformtools/h;->a(Ljava/lang/String;ILandroid/graphics/Bitmap$CompressFormat;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 911
    const-string v1, "MicroMsg.ImgInfoStorage"

    const-string v2, "rotate big pic fail"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 892
    :cond_f
    const/4 v1, -0x1

    goto :goto_7

    :cond_10
    const/4 v1, -0x1

    goto :goto_8

    :cond_11
    const/4 v1, -0x1

    goto :goto_9

    :cond_12
    const/4 v1, -0x1

    goto :goto_a

    .line 898
    :cond_13
    const-string v2, "MicroMsg.ImgInfoStorage"

    const-string v3, "createThumbNail big pic no compress, origLen:%d oriWidth:%d oriHeight:%d"

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static/range {p1 .. p1}, Lcom/tencent/mm/a/c;->ar(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x1

    if-eqz v7, :cond_14

    iget v1, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v5, 0x2

    if-eqz v7, :cond_15

    iget v1, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 900
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v6, v1}, Lcom/tencent/mm/sdk/platformtools/m;->f(Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_b

    .line 898
    :cond_14
    const/4 v1, -0x1

    goto :goto_c

    :cond_15
    const/4 v1, -0x1

    goto :goto_d

    .line 918
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/a/f;->h([B)Ljava/lang/String;

    move-result-object v1

    .line 919
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "THUMBNAIL_DIRPATH://th_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 920
    const-string v3, "th_"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/tencent/mm/w/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 921
    if-eqz p3, :cond_1a

    .line 923
    invoke-static/range {p8 .. p8}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_17

    invoke-static/range {p8 .. p8}, Lcom/tencent/mm/a/c;->as(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 924
    :cond_17
    invoke-static {v6}, Lcom/tencent/mm/sdk/platformtools/h;->st(Ljava/lang/String;)I

    move-result v9

    .line 925
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FE()J

    move-result-wide v4

    .line 926
    if-lez v9, :cond_18

    .line 927
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const-string v8, "th_"

    const-string v11, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v8, v11}, Lcom/tencent/mm/w/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    invoke-static/range {v6 .. v12}, Lcom/tencent/mm/sdk/platformtools/h;->a(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;IILcom/tencent/mm/pointers/PInt;Lcom/tencent/mm/pointers/PInt;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 928
    const-string v1, "MicroMsg.ImgInfoStorage"

    const-string v2, "createLongPictureThumbNail fail"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 932
    :cond_18
    const/16 v7, 0x64

    const/16 v8, 0x64

    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x5a

    const-string v11, "th_"

    const-string v12, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v11, v12}, Lcom/tencent/mm/w/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    invoke-static/range {v6 .. v14}, Lcom/tencent/mm/sdk/platformtools/h;->a(Ljava/lang/String;IILandroid/graphics/Bitmap$CompressFormat;ILjava/lang/String;ZLcom/tencent/mm/pointers/PInt;Lcom/tencent/mm/pointers/PInt;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 933
    const-string v1, "MicroMsg.ImgInfoStorage"

    const-string v2, "createThumbNail thumb fail"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 938
    :cond_19
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 939
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 940
    const-string v3, "MicroMsg.ImgInfoStorage"

    const-string v7, " thumbSize: %d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v3, v7, v8}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 941
    sget-object v3, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v7, 0x2aa9

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v8, v9

    const/4 v1, 0x1

    invoke-static {v6}, Lcom/tencent/mm/a/c;->ar(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    const/4 v1, 0x2

    const/16 v9, 0x5a

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    const/4 v1, 0x3

    invoke-static {v4, v5}, Lcom/tencent/mm/sdk/platformtools/cj;->O(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v8, v1

    invoke-virtual {v3, v7, v8}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    .line 952
    :goto_e
    const-string v1, "MicroMsg.ImgInfoStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "insert: thumbName = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    :cond_1a
    new-instance v1, Lcom/tencent/mm/w/e;

    invoke-direct {v1}, Lcom/tencent/mm/w/e;-><init>()V

    .line 956
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/tencent/mm/w/e;->cL(I)V

    .line 957
    move-object/from16 v0, p0

    iget v3, v0, Lcom/tencent/mm/w/g;->ctm:I

    add-int/lit8 v4, v3, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/tencent/mm/w/g;->ctm:I

    invoke-virtual {v1, v3}, Lcom/tencent/mm/w/e;->dz(I)V

    .line 958
    move/from16 v0, p4

    invoke-virtual {v1, v0}, Lcom/tencent/mm/w/e;->setSource(I)V

    .line 959
    if-eqz p3, :cond_1b

    .line 960
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tencent/mm/w/e;->fR(Ljava/lang/String;)V

    .line 961
    invoke-virtual {v1, v2}, Lcom/tencent/mm/w/e;->fS(Ljava/lang/String;)V

    .line 962
    invoke-static {v6}, Lcom/tencent/mm/a/c;->ar(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/w/e;->cJ(I)V

    .line 964
    :cond_1b
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FC()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/w/e;->dx(I)V

    .line 966
    const-string v2, "MicroMsg.ImgInfoStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "insert: compress img size = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->vR()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 943
    :cond_1c
    const-string v1, "MicroMsg.ImgInfoStorage"

    const-string v3, " thumbImg not exits"

    invoke-static {v1, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 947
    :cond_1d
    const/4 v1, 0x0

    move-object/from16 v0, p8

    invoke-static {v0, v3, v1}, Lcom/tencent/mm/sdk/platformtools/m;->f(Ljava/lang/String;Ljava/lang/String;Z)Z

    goto/16 :goto_e

    :catch_1
    move-exception v1

    goto/16 :goto_1

    :cond_1e
    move v3, v2

    move v2, v1

    goto/16 :goto_6

    :cond_1f
    move/from16 v16, v4

    move v4, v3

    move/from16 v3, v16

    goto/16 :goto_5

    :cond_20
    move/from16 v16, v2

    move v2, v1

    move/from16 v1, v16

    goto/16 :goto_4
.end method

.method private a(Ljava/lang/String;ZIILcom/tencent/mm/pointers/PInt;Lcom/tencent/mm/pointers/PInt;)Lcom/tencent/mm/w/e;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 791
    const/4 v2, 0x0

    const-string v8, ""

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/tencent/mm/w/g;->a(Ljava/lang/String;IZIILcom/tencent/mm/pointers/PInt;Lcom/tencent/mm/pointers/PInt;Ljava/lang/String;)Lcom/tencent/mm/w/e;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/w/g;Ljava/lang/String;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x2

    const/high16 v7, 0x4000

    .line 53
    const-string v0, "MicroMsg.ImgInfoStorage"

    const-string v1, "checkrefresh load done, uri: %s"

    new-array v2, v10, [Ljava/lang/Object;

    aput-object p1, v2, v9

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/mm/w/g;->ctj:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/mm/w/g;->cth:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/w/l;

    iget-object v1, v0, Lcom/tencent/mm/w/l;->url:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/w/g;->ctg:Lcom/tencent/mm/a/d;

    invoke-virtual {v1, p1}, Lcom/tencent/mm/a/d;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/tencent/mm/w/g;->cti:Ljava/util/Map;

    iget v0, v0, Lcom/tencent/mm/w/l;->cts:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    cmpl-float v3, v3, v7

    if-gez v3, :cond_1

    cmpl-float v3, v4, v7

    if-ltz v3, :cond_0

    :cond_1
    const-string v3, "MicroMsg.ImgInfoStorage"

    const-string v4, "bm: w:%d, h:%d "

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v10

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method private d(Ljava/lang/String;F)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 429
    invoke-static {}, Lcom/tencent/mm/model/be;->ut()Lcom/tencent/mm/sdk/platformtools/an;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/w/j;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/mm/w/j;-><init>(Lcom/tencent/mm/w/g;Ljava/lang/String;F)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/an;->o(Ljava/lang/Runnable;)I

    .line 443
    return-void
.end method

.method public static fV(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "THUMBNAIL_DIRPATH://th_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final AO()V
    .locals 2

    .prologue
    .line 175
    const-string v0, "MicroMsg.ImgInfoStorage"

    const-string v1, "clearCacheMap"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/tencent/mm/w/g;->ctg:Lcom/tencent/mm/a/d;

    new-instance v1, Lcom/tencent/mm/w/i;

    invoke-direct {v1, p0}, Lcom/tencent/mm/w/i;-><init>(Lcom/tencent/mm/w/g;)V

    invoke-virtual {v0}, Lcom/tencent/mm/a/d;->nc()V

    .line 186
    return-void
.end method

.method public final AP()Ljava/util/List;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 596
    const-string v1, "select * "

    .line 597
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FROM ImgInfo2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 598
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE offset<totalLen ;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 599
    iget-object v2, p0, Lcom/tencent/mm/w/g;->cjB:Lcom/tencent/mm/ap/i;

    invoke-virtual {v2, v1, v0}, Lcom/tencent/mm/ap/i;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 600
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 601
    const-string v1, "MicroMsg.ImgInfoStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getUnfinishInfo resCount:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    if-nez v3, :cond_0

    .line 603
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 625
    :goto_0
    return-object v0

    .line 606
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 607
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_5

    .line 608
    invoke-interface {v2, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 609
    new-instance v4, Lcom/tencent/mm/w/e;

    invoke-direct {v4}, Lcom/tencent/mm/w/e;-><init>()V

    .line 610
    invoke-virtual {v4, v2}, Lcom/tencent/mm/w/e;->convertFrom(Landroid/database/Cursor;)V

    .line 612
    invoke-virtual {v4}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {p0, v5}, Lcom/tencent/mm/w/g;->dH(I)Lcom/tencent/mm/w/e;

    move-result-object v5

    .line 613
    if-eqz v5, :cond_3

    .line 614
    invoke-virtual {v5}, Lcom/tencent/mm/w/e;->AH()I

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Lcom/tencent/mm/w/e;->AF()I

    move-result v5

    if-eqz v5, :cond_2

    .line 616
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 619
    :cond_3
    invoke-virtual {v4}, Lcom/tencent/mm/w/e;->AH()I

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4}, Lcom/tencent/mm/w/e;->AF()I

    move-result v5

    if-eqz v5, :cond_2

    .line 620
    :cond_4
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 624
    :cond_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public final E(J)Lcom/tencent/mm/w/e;
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 581
    new-instance v7, Lcom/tencent/mm/w/e;

    invoke-direct {v7}, Lcom/tencent/mm/w/e;-><init>()V

    .line 582
    iget-object v0, p0, Lcom/tencent/mm/w/g;->cjB:Lcom/tencent/mm/ap/i;

    const-string v1, "ImgInfo2"

    const-string v3, "id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/mm/ap/i;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 585
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 586
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 587
    invoke-virtual {v7, v0}, Lcom/tencent/mm/w/e;->convertFrom(Landroid/database/Cursor;)V

    .line 589
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 590
    return-object v7
.end method

.method public final a(JLcom/tencent/mm/w/e;)I
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 1049
    invoke-virtual {p3}, Lcom/tencent/mm/w/e;->oa()Landroid/content/ContentValues;

    move-result-object v0

    .line 1050
    iget-object v1, p0, Lcom/tencent/mm/w/g;->cjB:Lcom/tencent/mm/ap/i;

    const-string v2, "ImgInfo2"

    const-string v3, "id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/tencent/mm/ap/i;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1051
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1052
    invoke-virtual {p0}, Lcom/tencent/mm/w/g;->Ei()V

    .line 1054
    :cond_0
    return v0
.end method

.method public final a(Ljava/lang/String;IIILcom/tencent/mm/pointers/PString;Lcom/tencent/mm/pointers/PInt;Lcom/tencent/mm/pointers/PInt;)J
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 749
    if-nez p2, :cond_2

    .line 750
    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v8, p5, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/tencent/mm/w/g;->a(Ljava/lang/String;IZIILcom/tencent/mm/pointers/PInt;Lcom/tencent/mm/pointers/PInt;Ljava/lang/String;)Lcom/tencent/mm/w/e;

    move-result-object v0

    .line 751
    if-nez v0, :cond_1

    .line 752
    const-wide/16 v0, -0x1

    .line 787
    :cond_0
    :goto_0
    return-wide v0

    .line 754
    :cond_1
    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AJ()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p5, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 755
    iget-object v1, p0, Lcom/tencent/mm/w/g;->cjB:Lcom/tencent/mm/ap/i;

    const-string v2, "ImgInfo2"

    const-string v3, "id"

    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->oa()Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/tencent/mm/ap/i;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 756
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 757
    invoke-virtual {p0}, Lcom/tencent/mm/w/g;->Ei()V

    goto :goto_0

    .line 762
    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    .line 763
    const/4 v2, 0x1

    const/4 v3, 0x1

    iget-object v8, p5, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/tencent/mm/w/g;->a(Ljava/lang/String;IZIILcom/tencent/mm/pointers/PInt;Lcom/tencent/mm/pointers/PInt;Ljava/lang/String;)Lcom/tencent/mm/w/e;

    move-result-object v7

    .line 764
    if-nez v7, :cond_3

    .line 765
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 767
    :cond_3
    invoke-virtual {v7}, Lcom/tencent/mm/w/e;->AJ()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p5, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 768
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/tencent/mm/w/e;->dy(I)V

    .line 769
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/tencent/mm/w/e;->dA(I)V

    .line 771
    iget-object v0, p0, Lcom/tencent/mm/w/g;->cjB:Lcom/tencent/mm/ap/i;

    const-string v1, "ImgInfo2"

    const-string v2, "id"

    invoke-virtual {v7}, Lcom/tencent/mm/w/e;->oa()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mm/ap/i;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    .line 772
    const/4 v2, 0x0

    new-instance v5, Lcom/tencent/mm/pointers/PInt;

    invoke-direct {v5}, Lcom/tencent/mm/pointers/PInt;-><init>()V

    new-instance v6, Lcom/tencent/mm/pointers/PInt;

    invoke-direct {v6}, Lcom/tencent/mm/pointers/PInt;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/w/g;->a(Ljava/lang/String;ZIILcom/tencent/mm/pointers/PInt;Lcom/tencent/mm/pointers/PInt;)Lcom/tencent/mm/w/e;

    move-result-object v0

    .line 773
    long-to-int v1, v8

    invoke-virtual {v0, v1}, Lcom/tencent/mm/w/e;->dB(I)V

    .line 775
    invoke-virtual {v7}, Lcom/tencent/mm/w/e;->AI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/w/e;->fR(Ljava/lang/String;)V

    .line 776
    invoke-virtual {v7}, Lcom/tencent/mm/w/e;->AJ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/w/e;->fS(Ljava/lang/String;)V

    .line 777
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/w/e;->cJ(I)V

    .line 779
    iget-object v1, p0, Lcom/tencent/mm/w/g;->cjB:Lcom/tencent/mm/ap/i;

    const-string v2, "ImgInfo2"

    const-string v3, "id"

    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->oa()Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/tencent/mm/ap/i;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 780
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 781
    invoke-virtual {p0}, Lcom/tencent/mm/w/g;->Ei()V

    goto/16 :goto_0

    .line 786
    :cond_4
    const/4 v0, 0x0

    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 787
    const-wide/16 v0, 0x0

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;IILcom/tencent/mm/pointers/PString;Lcom/tencent/mm/pointers/PInt;Lcom/tencent/mm/pointers/PInt;)J
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v7, -0x1

    .line 1029
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/w/g;->a(Ljava/lang/String;ZIILcom/tencent/mm/pointers/PInt;Lcom/tencent/mm/pointers/PInt;)Lcom/tencent/mm/w/e;

    move-result-object v0

    .line 1030
    if-nez v0, :cond_1

    move-wide v0, v7

    .line 1040
    :cond_0
    :goto_0
    return-wide v0

    .line 1034
    :cond_1
    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->vR()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/w/e;->setOffset(I)V

    .line 1035
    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AJ()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p4, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1036
    iget-object v1, p0, Lcom/tencent/mm/w/g;->cjB:Lcom/tencent/mm/ap/i;

    const-string v2, "ImgInfo2"

    const-string v3, "id"

    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->oa()Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/tencent/mm/ap/i;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 1037
    cmp-long v2, v0, v7

    if-eqz v2, :cond_0

    .line 1038
    invoke-virtual {p0}, Lcom/tencent/mm/w/g;->Ei()V

    goto :goto_0
.end method

.method public final a([BIZLjava/lang/String;ILjava/lang/String;Lcom/tencent/mm/pointers/PString;Lcom/tencent/mm/pointers/PInt;Lcom/tencent/mm/pointers/PInt;)J
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 977
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SERVERID://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 978
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/a/f;->h([B)Ljava/lang/String;

    move-result-object v2

    .line 980
    if-eqz p1, :cond_1

    array-length v3, p1

    if-ltz v3, :cond_1

    .line 981
    invoke-static {p1}, Lcom/tencent/mm/sdk/platformtools/h;->cj([B)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 982
    if-nez v3, :cond_0

    .line 983
    const-string v4, "MicroMsg.ImgInfoStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "create decodeByteArray failed: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    :cond_0
    if-nez p3, :cond_1

    if-eqz v3, :cond_1

    .line 988
    const/16 v4, 0xc8

    const/16 v5, 0xc8

    :try_start_0
    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/h;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 989
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    move-object/from16 v0, p8

    iput v4, v0, Lcom/tencent/mm/pointers/PInt;->value:I

    .line 990
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object/from16 v0, p9

    iput v4, v0, Lcom/tencent/mm/pointers/PInt;->value:I

    .line 991
    const/16 v4, 0x5a

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const-string v6, "th_"

    const-string v7, ""

    invoke-virtual {p0, v2, v6, v7}, Lcom/tencent/mm/w/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v3, v4, v5, v6, v7}, Lcom/tencent/mm/sdk/platformtools/h;->a(Landroid/graphics/Bitmap;ILandroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1000
    :cond_1
    :goto_0
    new-instance v3, Lcom/tencent/mm/w/e;

    invoke-direct {v3}, Lcom/tencent/mm/w/e;-><init>()V

    .line 1001
    invoke-static {p4}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1004
    invoke-virtual {v3, p5}, Lcom/tencent/mm/w/e;->setOffset(I)V

    .line 1005
    invoke-virtual {v3, p5}, Lcom/tencent/mm/w/e;->cJ(I)V

    .line 1007
    :goto_1
    const/4 v1, -0x1

    invoke-virtual {v3, v1}, Lcom/tencent/mm/w/e;->cL(I)V

    .line 1008
    iget v1, p0, Lcom/tencent/mm/w/g;->ctm:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/tencent/mm/w/g;->ctm:I

    invoke-virtual {v3, v1}, Lcom/tencent/mm/w/e;->dz(I)V

    .line 1009
    invoke-virtual {v3, p4}, Lcom/tencent/mm/w/e;->fR(Ljava/lang/String;)V

    .line 1010
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "THUMBNAIL_DIRPATH://th_"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/tencent/mm/w/e;->fS(Ljava/lang/String;)V

    .line 1011
    invoke-virtual {v3}, Lcom/tencent/mm/w/e;->AJ()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p7, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1012
    if-eqz p3, :cond_3

    .line 1013
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lcom/tencent/mm/w/e;->dA(I)V

    .line 1017
    :goto_2
    invoke-virtual {v3, p6}, Lcom/tencent/mm/w/e;->fT(Ljava/lang/String;)V

    .line 1018
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FC()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v3, v1}, Lcom/tencent/mm/w/e;->dx(I)V

    .line 1021
    iget-object v1, p0, Lcom/tencent/mm/w/g;->cjB:Lcom/tencent/mm/ap/i;

    const-string v2, "ImgInfo2"

    const-string v4, "id"

    invoke-virtual {v3}, Lcom/tencent/mm/w/e;->oa()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v3}, Lcom/tencent/mm/ap/i;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 1022
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_2

    .line 1023
    invoke-virtual {p0}, Lcom/tencent/mm/w/g;->Ei()V

    .line 1025
    :cond_2
    return-wide v1

    .line 994
    :catch_0
    move-exception v3

    const-string v3, "MicroMsg.ImgInfoStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "create thumbnail from byte failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1015
    :cond_3
    invoke-virtual {v3, p2}, Lcom/tencent/mm/w/e;->dA(I)V

    goto :goto_2

    :cond_4
    move-object p4, v1

    goto :goto_1
.end method

.method public final a([BIZLjava/lang/String;Lcom/tencent/mm/pointers/PString;Lcom/tencent/mm/pointers/PInt;Lcom/tencent/mm/pointers/PInt;)J
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 971
    const-string v4, ""

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/tencent/mm/w/g;->a([BIZLjava/lang/String;ILjava/lang/String;Lcom/tencent/mm/pointers/PString;Lcom/tencent/mm/pointers/PInt;Lcom/tencent/mm/pointers/PInt;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Ljava/lang/String;FLandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 539
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    .line 540
    :cond_0
    const/4 v0, 0x0

    .line 564
    :cond_1
    :goto_0
    return-object v0

    .line 543
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 545
    iget-object v0, p0, Lcom/tencent/mm/w/g;->ctg:Lcom/tencent/mm/a/d;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/a/d;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 546
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 548
    :cond_3
    invoke-static {v2, p2}, Lcom/tencent/mm/sdk/platformtools/e;->e(Ljava/lang/String;F)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 549
    if-eqz v1, :cond_5

    .line 551
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 552
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 553
    const/high16 v4, 0x42c8

    invoke-static {p3, v4}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v4

    .line 554
    int-to-float v0, v0

    int-to-float v5, v4

    div-float/2addr v0, v5

    .line 555
    int-to-float v3, v3

    div-float v0, v3, v0

    float-to-int v0, v0

    .line 556
    const/4 v3, 0x1

    invoke-static {v1, v4, v0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 557
    if-eq v1, v0, :cond_4

    .line 558
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 560
    :cond_4
    const-string v1, "MicroMsg.ImgInfoStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cached file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget-object v1, p0, Lcom/tencent/mm/w/g;->ctg:Lcom/tencent/mm/a/d;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/a/d;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;FZ)Landroid/graphics/Bitmap;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 334
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/mm/w/g;->a(Ljava/lang/String;ZFZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;ZFZZ)Landroid/graphics/Bitmap;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/16 v4, 0x96

    .line 476
    if-nez p2, :cond_0

    .line 477
    invoke-virtual {p0, p1}, Lcom/tencent/mm/w/g;->fX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 479
    :cond_0
    if-nez p1, :cond_2

    .line 480
    const/4 v0, 0x0

    .line 533
    :cond_1
    :goto_0
    return-object v0

    .line 482
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/w/g;->ctg:Lcom/tencent/mm/a/d;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/a/d;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 485
    if-nez v0, :cond_3

    .line 486
    const-string v5, "MicroMsg.ImgInfoStorage"

    const-string v6, "bm is null:%b,  url:%s"

    const/4 v1, 0x2

    new-array v7, v1, [Ljava/lang/Object;

    if-nez v0, :cond_7

    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v7, v3

    aput-object p1, v7, v2

    invoke-static {v5, v6, v7}, Lcom/tencent/mm/sdk/platformtools/aa;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 489
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 491
    :cond_4
    invoke-static {p1, p3}, Lcom/tencent/mm/sdk/platformtools/e;->e(Ljava/lang/String;F)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 493
    if-eqz v3, :cond_1

    .line 494
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 495
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int v1, v0

    .line 496
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int v0, v0

    .line 498
    if-eqz p5, :cond_b

    .line 499
    if-gt v1, v4, :cond_5

    if-le v0, v4, :cond_b

    .line 500
    :cond_5
    if-le v1, v0, :cond_8

    .line 501
    mul-int/lit16 v0, v0, 0x96

    div-int/2addr v0, v1

    .line 512
    :goto_2
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v3, v4, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 518
    :goto_3
    if-eq v3, v1, :cond_6

    .line 519
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 521
    :cond_6
    if-eqz p4, :cond_a

    .line 522
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x3

    invoke-static {v0, v3}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v0

    .line 523
    int-to-float v0, v0

    invoke-static {v1, v2, v0}, Lcom/tencent/mm/sdk/platformtools/h;->a(Landroid/graphics/Bitmap;ZF)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 524
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 528
    :goto_4
    const-string v1, "MicroMsg.ImgInfoStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bitmap time:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const-string v1, "MicroMsg.ImgInfoStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cached file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-object v1, p0, Lcom/tencent/mm/w/g;->ctg:Lcom/tencent/mm/a/d;

    invoke-virtual {v1, p1, v0}, Lcom/tencent/mm/a/d;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    move v1, v3

    .line 486
    goto/16 :goto_1

    .line 503
    :cond_8
    if-ne v1, v0, :cond_9

    move v0, v4

    .line 505
    goto :goto_2

    .line 507
    :cond_9
    mul-int/lit16 v1, v1, 0x96

    div-int v0, v1, v0

    move v8, v4

    move v4, v0

    move v0, v8

    .line 508
    goto :goto_2

    .line 516
    :catch_0
    move-exception v0

    move-object v1, v3

    goto :goto_3

    :cond_a
    move-object v0, v1

    .line 526
    goto :goto_4

    :cond_b
    move v4, v1

    goto :goto_2
.end method

.method public final a([BZLandroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0x96

    const/16 v2, 0x64

    .line 244
    invoke-static {p1}, Lcom/tencent/mm/sdk/platformtools/cj;->A([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 245
    const-string v1, "MicroMsg.ImgInfoStorage"

    const-string v2, "save dir thumb error, thumbBuf is null"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_0
    :goto_0
    return-object v0

    .line 254
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FD()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/a/f;->h([B)Ljava/lang/String;

    move-result-object v4

    .line 255
    const-string v3, "th_"

    const-string v5, ""

    invoke-virtual {p0, v4, v3, v5}, Lcom/tencent/mm/w/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 256
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ".tmp"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 257
    const-string v3, "MicroMsg.ImgInfoStorage"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "saveDirThumb, fullPath = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 262
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 263
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 265
    if-eqz p2, :cond_3

    move v3, v1

    .line 266
    :goto_1
    if-eqz p2, :cond_4

    .line 267
    :goto_2
    const/4 v2, 0x0

    invoke-static {v6, v3, v1, v2}, Lcom/tencent/mm/sdk/platformtools/h;->a(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    const/16 v2, 0x5a

    const/4 v3, 0x1

    invoke-static {v1, v2, p3, v5, v3}, Lcom/tencent/mm/sdk/platformtools/h;->a(Landroid/graphics/Bitmap;ILandroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 275
    const-string v1, "MicroMsg.ImgInfoStorage"

    const-string v2, "create thumbnail, delete tmp file"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 280
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "THUMBNAIL_DIRPATH://th_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    move v3, v2

    .line 265
    goto :goto_1

    :cond_4
    move v1, v2

    .line 266
    goto :goto_2

    .line 269
    :catch_0
    move-exception v1

    .line 270
    :try_start_1
    const-string v2, "MicroMsg.ImgInfoStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "create thumbnail from byte failed: th_"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    const-string v2, "MicroMsg.ImgInfoStorage"

    const-string v3, "create thumbnail, delete tmp file"

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .line 273
    :catchall_0
    move-exception v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 275
    const-string v2, "MicroMsg.ImgInfoStorage"

    const-string v3, "create thumbnail, delete tmp file"

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 278
    :cond_5
    throw v0
.end method

.method public final a(Landroid/widget/ImageView;Ljava/lang/String;FII)Z
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x4000

    const/4 v8, 0x2

    const/4 v5, -0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 358
    invoke-static {p2}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    const-string v0, "MicroMsg.ImgInfoStorage"

    const-string v1, "invalid uri is %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v2

    invoke-static {v0, v1, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 425
    :goto_0
    return v0

    .line 363
    :cond_0
    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/w/g;->ctl:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 364
    iget-object v0, p0, Lcom/tencent/mm/w/g;->ctl:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 374
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/w/g;->ctg:Lcom/tencent/mm/a/d;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/a/d;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 375
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_6

    .line 376
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 377
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v1, v5, :cond_1

    .line 378
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 379
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    .line 382
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 383
    cmpl-float v1, v1, v6

    if-gez v1, :cond_2

    cmpl-float v1, v4, v6

    if-ltz v1, :cond_3

    .line 384
    :cond_2
    const-string v1, "MicroMsg.ImgInfoStorage"

    const-string v4, "bm: w:%d, h:%d "

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {v1, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_3
    move v0, v3

    .line 388
    goto :goto_0

    .line 366
    :cond_4
    invoke-virtual {p0, p2}, Lcom/tencent/mm/w/g;->fX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    if-nez p2, :cond_5

    move v0, v2

    .line 368
    goto :goto_0

    .line 370
    :cond_5
    iget-object v1, p0, Lcom/tencent/mm/w/g;->ctl:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 371
    goto :goto_1

    .line 391
    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/w/g;->ctn:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/mm/w/g;->ctn:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    :cond_7
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v4, -0x111112

    invoke-direct {v0, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/tencent/mm/w/g;->ctn:Ljava/lang/ref/SoftReference;

    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/w/g;->ctn:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 392
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    if-lez p4, :cond_b

    move v0, p4

    :goto_2
    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int v5, v0

    if-lez p5, :cond_c

    move v0, p5

    :goto_3
    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int v0, v0

    invoke-direct {v4, v5, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 393
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    iget-object v0, p0, Lcom/tencent/mm/w/g;->ctg:Lcom/tencent/mm/a/d;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/a/d;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    .line 401
    iget-object v0, p0, Lcom/tencent/mm/w/g;->cth:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/w/l;

    .line 402
    iget v6, v0, Lcom/tencent/mm/w/l;->cts:I

    if-ne v4, v6, :cond_9

    .line 403
    const-string v4, "MicroMsg.ImgInfoStorage"

    const-string v5, "setbitmapFromUri  [%d, %s], size[%d,%d]"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, v0, Lcom/tencent/mm/w/l;->cts:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    iget-object v7, v0, Lcom/tencent/mm/w/l;->url:Ljava/lang/String;

    aput-object v7, v6, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v8

    const/4 v3, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v4, v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 406
    iput-object v1, v0, Lcom/tencent/mm/w/l;->url:Ljava/lang/String;

    .line 408
    iget-object v0, p0, Lcom/tencent/mm/w/g;->ctj:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 409
    iget-object v0, p0, Lcom/tencent/mm/w/g;->ctj:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 410
    invoke-direct {p0, v1, p3}, Lcom/tencent/mm/w/g;->d(Ljava/lang/String;F)V

    :cond_a
    move v0, v2

    .line 412
    goto/16 :goto_0

    .line 392
    :cond_b
    const/16 v0, 0x64

    goto :goto_2

    :cond_c
    const/16 v0, 0x4b

    goto :goto_3

    .line 415
    :cond_d
    const-string v0, "MicroMsg.ImgInfoStorage"

    const-string v5, "setbitmapFromUri addIV: [%d, %s], size[%d,%d]"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    aput-object v1, v6, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v8

    const/4 v3, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v0, v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 416
    iget-object v0, p0, Lcom/tencent/mm/w/g;->cti:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    new-instance v0, Lcom/tencent/mm/w/l;

    invoke-direct {v0, v4, v1}, Lcom/tencent/mm/w/l;-><init>(ILjava/lang/String;)V

    .line 418
    iget-object v3, p0, Lcom/tencent/mm/w/g;->cth:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    iget-object v0, p0, Lcom/tencent/mm/w/g;->ctj:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 421
    iget-object v0, p0, Lcom/tencent/mm/w/g;->ctj:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 422
    invoke-direct {p0, v1, p3}, Lcom/tencent/mm/w/g;->d(Ljava/lang/String;F)V

    :cond_e
    move v0, v2

    .line 425
    goto/16 :goto_0
.end method

.method public final b(Ljava/lang/String;F)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 326
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/mm/w/g;->a(Ljava/lang/String;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;F)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 330
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/mm/w/g;->a(Ljava/lang/String;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final dC(I)V
    .locals 9
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 652
    invoke-virtual {p0, p1}, Lcom/tencent/mm/w/g;->dE(I)Lcom/tencent/mm/w/e;

    move-result-object v0

    .line 653
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v1

    int-to-long v3, p1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 670
    :cond_0
    :goto_0
    return-void

    .line 657
    :cond_1
    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AI()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {p0, v1, v2, v3}, Lcom/tencent/mm/w/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/a/c;->deleteFile(Ljava/lang/String;)Z

    .line 658
    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AJ()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {p0, v1, v2, v3}, Lcom/tencent/mm/w/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/a/c;->deleteFile(Ljava/lang/String;)Z

    .line 659
    iget-object v1, p0, Lcom/tencent/mm/w/g;->cjB:Lcom/tencent/mm/ap/i;

    const-string v2, "ImgInfo2"

    const-string v3, "id=?"

    new-array v4, v6, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/mm/ap/i;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 661
    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AM()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 662
    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AK()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/w/g;->dE(I)Lcom/tencent/mm/w/e;

    move-result-object v0

    .line 663
    if-eqz v0, :cond_0

    .line 666
    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AI()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {p0, v1, v2, v3}, Lcom/tencent/mm/w/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/a/c;->deleteFile(Ljava/lang/String;)Z

    .line 667
    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AJ()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {p0, v1, v2, v3}, Lcom/tencent/mm/w/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/a/c;->deleteFile(Ljava/lang/String;)Z

    .line 668
    iget-object v1, p0, Lcom/tencent/mm/w/g;->cjB:Lcom/tencent/mm/ap/i;

    const-string v2, "ImgInfo2"

    const-string v3, "id=?"

    new-array v4, v6, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/mm/ap/i;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final dD(I)V
    .locals 9
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 673
    invoke-virtual {p0, p1}, Lcom/tencent/mm/w/g;->dF(I)Lcom/tencent/mm/w/e;

    move-result-object v0

    .line 674
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AH()I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 691
    :cond_0
    :goto_0
    return-void

    .line 678
    :cond_1
    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AI()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {p0, v1, v2, v3}, Lcom/tencent/mm/w/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/a/c;->deleteFile(Ljava/lang/String;)Z

    .line 679
    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AJ()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {p0, v1, v2, v3}, Lcom/tencent/mm/w/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/a/c;->deleteFile(Ljava/lang/String;)Z

    .line 680
    iget-object v1, p0, Lcom/tencent/mm/w/g;->cjB:Lcom/tencent/mm/ap/i;

    const-string v2, "ImgInfo2"

    const-string v3, "msgSvrId=?"

    new-array v4, v6, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/mm/ap/i;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 682
    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AM()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 683
    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AK()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/w/g;->dE(I)Lcom/tencent/mm/w/e;

    move-result-object v0

    .line 684
    if-eqz v0, :cond_0

    .line 687
    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AI()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {p0, v1, v2, v3}, Lcom/tencent/mm/w/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/a/c;->deleteFile(Ljava/lang/String;)Z

    .line 688
    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AJ()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {p0, v1, v2, v3}, Lcom/tencent/mm/w/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/a/c;->deleteFile(Ljava/lang/String;)Z

    .line 689
    iget-object v1, p0, Lcom/tencent/mm/w/g;->cjB:Lcom/tencent/mm/ap/i;

    const-string v2, "ImgInfo2"

    const-string v3, "id=?"

    new-array v4, v6, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/mm/ap/i;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final dE(I)Lcom/tencent/mm/w/e;
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 694
    new-instance v7, Lcom/tencent/mm/w/e;

    invoke-direct {v7}, Lcom/tencent/mm/w/e;-><init>()V

    .line 695
    iget-object v0, p0, Lcom/tencent/mm/w/g;->cjB:Lcom/tencent/mm/ap/i;

    const-string v1, "ImgInfo2"

    const-string v3, "id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/mm/ap/i;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 696
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 697
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 698
    invoke-virtual {v7, v0}, Lcom/tencent/mm/w/e;->convertFrom(Landroid/database/Cursor;)V

    .line 700
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 701
    return-object v7
.end method

.method public final dF(I)Lcom/tencent/mm/w/e;
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 705
    new-instance v7, Lcom/tencent/mm/w/e;

    invoke-direct {v7}, Lcom/tencent/mm/w/e;-><init>()V

    .line 706
    iget-object v0, p0, Lcom/tencent/mm/w/g;->cjB:Lcom/tencent/mm/ap/i;

    const-string v1, "ImgInfo2"

    const-string v3, "msgSvrId=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/mm/ap/i;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 708
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 709
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 710
    invoke-virtual {v7, v0}, Lcom/tencent/mm/w/e;->convertFrom(Landroid/database/Cursor;)V

    .line 712
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 713
    return-object v7
.end method

.method public final dG(I)Lcom/tencent/mm/w/e;
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 717
    new-instance v7, Lcom/tencent/mm/w/e;

    invoke-direct {v7}, Lcom/tencent/mm/w/e;-><init>()V

    .line 718
    iget-object v0, p0, Lcom/tencent/mm/w/g;->cjB:Lcom/tencent/mm/ap/i;

    const-string v1, "ImgInfo2"

    const-string v3, "msglocalid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/mm/ap/i;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 720
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 721
    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    .line 722
    invoke-virtual {v7, v0}, Lcom/tencent/mm/w/e;->convertFrom(Landroid/database/Cursor;)V

    .line 724
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 725
    return-object v7
.end method

.method public final dH(I)Lcom/tencent/mm/w/e;
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 729
    iget-object v0, p0, Lcom/tencent/mm/w/g;->cjB:Lcom/tencent/mm/ap/i;

    const-string v1, "ImgInfo2"

    const-string v3, "reserved1=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/mm/ap/i;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 730
    if-nez v0, :cond_0

    .line 731
    const-string v0, "MicroMsg.ImgInfoStorage"

    const-string v1, "getByHdId : cursor is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    :goto_0
    return-object v2

    .line 735
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    .line 736
    const-string v1, "MicroMsg.ImgInfoStorage"

    const-string v3, "getByHdId : cursor getCount <= 0"

    invoke-static {v1, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 741
    :cond_1
    new-instance v2, Lcom/tencent/mm/w/e;

    invoke-direct {v2}, Lcom/tencent/mm/w/e;-><init>()V

    .line 742
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 743
    invoke-virtual {v2, v0}, Lcom/tencent/mm/w/e;->convertFrom(Landroid/database/Cursor;)V

    .line 744
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public final fU(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 153
    const-string v0, ""

    .line 154
    const-string v1, "SERVERID://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 157
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/w/g;->dF(I)Lcom/tencent/mm/w/e;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AI()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 165
    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sB()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sC()Ljava/lang/String;

    move-result-object v2

    const-string v3, "th_"

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    const-string v0, ""

    invoke-static {v1, v2, v3, p1, v0}, Lcom/tencent/mm/sdk/platformtools/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    const-string v1, "MicroMsg.ImgInfoStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "read img buf failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move-object p1, v0

    .line 165
    goto :goto_0
.end method

.method public final fW(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 189
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 213
    :goto_0
    return-object v0

    .line 193
    :cond_1
    const-string v0, ""

    .line 194
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 196
    const-string v3, "THUMBNAIL://"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 197
    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 200
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tencent/mm/w/g;->dE(I)Lcom/tencent/mm/w/e;

    move-result-object v1

    .line 201
    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->AJ()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 212
    :cond_2
    :goto_1
    const-string v2, ""

    invoke-virtual {p0, v1, v0, v2}, Lcom/tencent/mm/w/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    const-string v1, "MicroMsg.ImgInfoStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "read img buf failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 205
    goto :goto_0

    .line 207
    :cond_3
    const-string v2, "THUMBNAIL_DIRPATH://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 208
    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 209
    const-string v0, "th_"

    goto :goto_1
.end method

.method public final fX(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 298
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 321
    :goto_0
    return-object v0

    .line 302
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 304
    const-string v2, "THUMBNAIL://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 305
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 308
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/w/g;->dE(I)Lcom/tencent/mm/w/e;

    move-result-object v0

    .line 310
    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AJ()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 321
    :cond_2
    const-string v1, ""

    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/mm/w/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    const-string v2, "MicroMsg.ImgInfoStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "read img buf failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 314
    goto :goto_0

    .line 316
    :cond_3
    const-string v1, "THUMBNAIL_DIRPATH://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 317
    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 318
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "th_"

    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/mm/w/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final g(Lcom/tencent/mm/storage/ak;)Lcom/tencent/mm/w/e;
    .locals 5
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    .line 569
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/w/g;->dG(I)Lcom/tencent/mm/w/e;

    move-result-object v0

    .line 570
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 571
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->AH()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/w/g;->dF(I)Lcom/tencent/mm/w/e;

    move-result-object v0

    .line 572
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 573
    :cond_1
    const-string v0, "MicroMsg.ImgInfoStorage"

    const-string v1, "deleteByMsg can\'t find correspond imgInfo"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const/4 v0, 0x0

    .line 577
    :cond_2
    return-object v0
.end method

.method public final h(Lcom/tencent/mm/storage/ak;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 629
    invoke-virtual {p0, p1}, Lcom/tencent/mm/w/g;->g(Lcom/tencent/mm/storage/ak;)Lcom/tencent/mm/w/e;

    move-result-object v0

    .line 630
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 631
    :cond_0
    const-string v0, "MicroMsg.ImgInfoStorage"

    const-string v1, "deleteByMsg can\'t find correspond imgInfo"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    :cond_1
    :goto_0
    return-void

    .line 635
    :cond_2
    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AI()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {p0, v1, v2, v3}, Lcom/tencent/mm/w/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/a/c;->deleteFile(Ljava/lang/String;)Z

    .line 636
    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AJ()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {p0, v1, v2, v3}, Lcom/tencent/mm/w/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/a/c;->deleteFile(Ljava/lang/String;)Z

    .line 637
    iget-object v1, p0, Lcom/tencent/mm/w/g;->cjB:Lcom/tencent/mm/ap/i;

    const-string v2, "ImgInfo2"

    const-string v3, "id=?"

    new-array v4, v9, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/mm/ap/i;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 639
    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AM()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 640
    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AK()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/w/g;->dE(I)Lcom/tencent/mm/w/e;

    move-result-object v0

    .line 641
    if-eqz v0, :cond_1

    .line 645
    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AI()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {p0, v1, v2, v3}, Lcom/tencent/mm/w/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/a/c;->deleteFile(Ljava/lang/String;)Z

    .line 646
    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AJ()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {p0, v1, v2, v3}, Lcom/tencent/mm/w/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/a/c;->deleteFile(Ljava/lang/String;)Z

    .line 647
    iget-object v1, p0, Lcom/tencent/mm/w/g;->cjB:Lcom/tencent/mm/ap/i;

    const-string v2, "ImgInfo2"

    const-string v3, "id=?"

    new-array v4, v9, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/mm/ap/i;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public final j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    const-string v0, ""

    .line 132
    const-string v1, "SERVERID://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 135
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/w/g;->dF(I)Lcom/tencent/mm/w/e;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AI()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 143
    :cond_0
    const-string v1, "THUMBNAIL_DIRPATH://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    const/16 v1, 0x17

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 145
    const-string p2, "th_"

    .line 148
    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sB()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sC()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_0
    invoke-static {v1, v2, p2, p1, p3}, Lcom/tencent/mm/sdk/platformtools/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    const-string v1, "MicroMsg.ImgInfoStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "read img buf failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move-object p1, v0

    .line 148
    goto :goto_0
.end method
