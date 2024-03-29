.class public Landroid/support/v7/internal/widget/j;
.super Landroid/database/DataSetObservable;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final mS:Ljava/lang/Object;

.field private static final mT:Ljava/util/Map;


# instance fields
.field private iW:Landroid/content/Intent;

.field private final mContext:Landroid/content/Context;

.field private final mU:Ljava/lang/Object;

.field private final mV:Ljava/util/List;

.field private final mW:Ljava/util/List;

.field private final mX:Ljava/lang/String;

.field private mY:Landroid/support/v7/internal/widget/l;

.field private mZ:I

.field private na:Z

.field private nb:Z

.field private nc:Z

.field private nd:Z

.field private ne:Landroid/support/v7/internal/widget/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 160
    const-class v0, Landroid/support/v7/internal/widget/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v7/internal/widget/j;->LOG_TAG:Ljava/lang/String;

    .line 221
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v7/internal/widget/j;->mS:Ljava/lang/Object;

    .line 226
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/support/v7/internal/widget/j;->mT:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/j;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Landroid/support/v7/internal/widget/j;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/support/v7/internal/widget/m;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 743
    iget-object v0, p0, Landroid/support/v7/internal/widget/j;->mW:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 744
    if-eqz v0, :cond_2

    .line 745
    iput-boolean v7, p0, Landroid/support/v7/internal/widget/j;->nc:Z

    .line 746
    invoke-direct {p0}, Landroid/support/v7/internal/widget/j;->cV()V

    .line 747
    iget-boolean v1, p0, Landroid/support/v7/internal/widget/j;->nb:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No preceding call to #readHistoricalData"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v1, p0, Landroid/support/v7/internal/widget/j;->nc:Z

    if-eqz v1, :cond_1

    iput-boolean v6, p0, Landroid/support/v7/internal/widget/j;->nc:Z

    iget-object v1, p0, Landroid/support/v7/internal/widget/j;->mX:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_3

    new-instance v1, Landroid/support/v7/internal/widget/o;

    invoke-direct {v1, p0, v6}, Landroid/support/v7/internal/widget/o;-><init>(Landroid/support/v7/internal/widget/j;B)V

    sget-object v2, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/support/v7/internal/widget/j;->mW:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v4, v3, v6

    iget-object v4, p0, Landroid/support/v7/internal/widget/j;->mX:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/internal/widget/o;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 748
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/support/v7/internal/widget/j;->cU()Z

    .line 749
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/j;->notifyChanged()V

    .line 751
    :cond_2
    return v0

    .line 747
    :cond_3
    new-instance v1, Landroid/support/v7/internal/widget/o;

    invoke-direct {v1, p0, v6}, Landroid/support/v7/internal/widget/o;-><init>(Landroid/support/v7/internal/widget/j;B)V

    new-array v2, v3, [Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v7/internal/widget/j;->mW:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v3, v2, v6

    iget-object v3, p0, Landroid/support/v7/internal/widget/j;->mX:Ljava/lang/String;

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/o;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method static synthetic b(Landroid/support/v7/internal/widget/j;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Landroid/support/v7/internal/widget/j;->mX:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v7/internal/widget/j;)Z
    .locals 1
    .parameter

    .prologue
    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/j;->na:Z

    return v0
.end method

.method private cT()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 670
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/j;->nd:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/internal/widget/j;->iW:Landroid/content/Intent;

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Landroid/support/v7/internal/widget/j;->nd:Z

    iget-object v0, p0, Landroid/support/v7/internal/widget/j;->mV:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroid/support/v7/internal/widget/j;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v3, p0, Landroid/support/v7/internal/widget/j;->iW:Landroid/content/Intent;

    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_0

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v6, p0, Landroid/support/v7/internal/widget/j;->mV:Ljava/util/List;

    new-instance v7, Landroid/support/v7/internal/widget/k;

    invoke-direct {v7, p0, v0}, Landroid/support/v7/internal/widget/k;-><init>(Landroid/support/v7/internal/widget/j;Landroid/content/pm/ResolveInfo;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 671
    :goto_1
    iget-boolean v3, p0, Landroid/support/v7/internal/widget/j;->na:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Landroid/support/v7/internal/widget/j;->nc:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/support/v7/internal/widget/j;->mX:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iput-boolean v2, p0, Landroid/support/v7/internal/widget/j;->na:Z

    iput-boolean v1, p0, Landroid/support/v7/internal/widget/j;->nb:Z

    invoke-direct {p0}, Landroid/support/v7/internal/widget/j;->cW()V

    :goto_2
    or-int/2addr v0, v1

    .line 672
    invoke-direct {p0}, Landroid/support/v7/internal/widget/j;->cV()V

    .line 673
    if-eqz v0, :cond_1

    .line 674
    invoke-direct {p0}, Landroid/support/v7/internal/widget/j;->cU()Z

    .line 675
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/j;->notifyChanged()V

    .line 677
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 670
    goto :goto_1

    :cond_3
    move v1, v2

    .line 671
    goto :goto_2
.end method

.method private cU()Z
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Landroid/support/v7/internal/widget/j;->mY:Landroid/support/v7/internal/widget/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/j;->iW:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/j;->mV:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/j;->mW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 689
    iget-object v0, p0, Landroid/support/v7/internal/widget/j;->mY:Landroid/support/v7/internal/widget/l;

    iget-object v0, p0, Landroid/support/v7/internal/widget/j;->iW:Landroid/content/Intent;

    iget-object v0, p0, Landroid/support/v7/internal/widget/j;->mV:Ljava/util/List;

    iget-object v0, p0, Landroid/support/v7/internal/widget/j;->mW:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 691
    const/4 v0, 0x1

    .line 693
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cV()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 758
    iget-object v0, p0, Landroid/support/v7/internal/widget/j;->mW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Landroid/support/v7/internal/widget/j;->mZ:I

    sub-int v2, v0, v2

    .line 759
    if-gtz v2, :cond_1

    .line 769
    :cond_0
    return-void

    .line 762
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/j;->nc:Z

    move v0, v1

    .line 763
    :goto_0
    if-ge v0, v2, :cond_0

    .line 764
    iget-object v3, p0, Landroid/support/v7/internal/widget/j;->mW:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 763
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private cW()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 976
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/j;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v7/internal/widget/j;->mX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v1

    .line 986
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 987
    const/4 v0, 0x0

    invoke-interface {v2, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 989
    const/4 v0, 0x0

    .line 990
    :goto_0
    if-eq v0, v8, :cond_0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    .line 991
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 994
    :cond_0
    const-string v0, "historical-records"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 995
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Share records file does not start with historical-records tag."

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1031
    :catch_0
    move-exception v0

    .line 1032
    :try_start_2
    sget-object v0, Landroid/support/v7/internal/widget/j;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Error reading historical recrod file: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v7/internal/widget/j;->mX:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1036
    if-eqz v1, :cond_1

    .line 1038
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 1044
    :cond_1
    :goto_1
    return-void

    .line 999
    :cond_2
    :try_start_4
    iget-object v0, p0, Landroid/support/v7/internal/widget/j;->mW:Ljava/util/List;

    .line 1000
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1003
    :cond_3
    :goto_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 1004
    if-eq v3, v8, :cond_6

    .line 1005
    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    .line 1008
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1011
    const-string v4, "historical-record"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1012
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Share records file not well-formed."

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1033
    :catch_1
    move-exception v0

    .line 1034
    :try_start_5
    sget-object v0, Landroid/support/v7/internal/widget/j;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Error reading historical recrod file: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v7/internal/widget/j;->mX:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1036
    if-eqz v1, :cond_1

    .line 1038
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 1041
    :catch_2
    move-exception v0

    goto :goto_1

    .line 1015
    :cond_4
    const/4 v3, 0x0

    :try_start_7
    const-string v4, "activity"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1016
    const/4 v4, 0x0

    const-string v5, "time"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1018
    const/4 v6, 0x0

    const-string v7, "weight"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 1020
    new-instance v7, Landroid/support/v7/internal/widget/m;

    invoke-direct {v7, v3, v4, v5, v6}, Landroid/support/v7/internal/widget/m;-><init>(Ljava/lang/String;JF)V

    .line 1021
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 1036
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    .line 1038
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 1041
    :cond_5
    :goto_3
    throw v0

    .line 1036
    :cond_6
    if-eqz v1, :cond_1

    .line 1038
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_1

    .line 1041
    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_3

    .line 979
    :catch_6
    move-exception v0

    goto :goto_1
.end method

.method static synthetic cX()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Landroid/support/v7/internal/widget/j;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final G(I)Landroid/content/pm/ResolveInfo;
    .locals 2
    .parameter

    .prologue
    .line 413
    iget-object v1, p0, Landroid/support/v7/internal/widget/j;->mU:Ljava/lang/Object;

    monitor-enter v1

    .line 414
    :try_start_0
    invoke-direct {p0}, Landroid/support/v7/internal/widget/j;->cT()V

    .line 415
    iget-object v0, p0, Landroid/support/v7/internal/widget/j;->mV:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/k;

    iget-object v0, v0, Landroid/support/v7/internal/widget/k;->resolveInfo:Landroid/content/pm/ResolveInfo;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 416
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final H(I)Landroid/content/Intent;
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 460
    iget-object v2, p0, Landroid/support/v7/internal/widget/j;->mU:Ljava/lang/Object;

    monitor-enter v2

    .line 461
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/j;->iW:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 462
    monitor-exit v2

    move-object v0, v1

    .line 490
    :goto_0
    return-object v0

    .line 465
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/internal/widget/j;->cT()V

    .line 467
    iget-object v0, p0, Landroid/support/v7/internal/widget/j;->mV:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/k;

    .line 469
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/support/v7/internal/widget/k;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/support/v7/internal/widget/k;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Landroid/support/v7/internal/widget/j;->iW:Landroid/content/Intent;

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 474
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 476
    iget-object v4, p0, Landroid/support/v7/internal/widget/j;->ne:Landroid/support/v7/internal/widget/n;

    if-eqz v4, :cond_1

    .line 478
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 479
    iget-object v4, p0, Landroid/support/v7/internal/widget/j;->ne:Landroid/support/v7/internal/widget/n;

    invoke-interface {v4}, Landroid/support/v7/internal/widget/n;->cY()Z

    move-result v4

    .line 481
    if-eqz v4, :cond_1

    .line 482
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 486
    :cond_1
    new-instance v1, Landroid/support/v7/internal/widget/m;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/high16 v6, 0x3f80

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/support/v7/internal/widget/m;-><init>(Landroid/content/ComponentName;JF)V

    .line 488
    invoke-direct {p0, v1}, Landroid/support/v7/internal/widget/j;->a(Landroid/support/v7/internal/widget/m;)Z

    .line 490
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 491
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final I(I)V
    .locals 6
    .parameter

    .prologue
    .line 535
    iget-object v2, p0, Landroid/support/v7/internal/widget/j;->mU:Ljava/lang/Object;

    monitor-enter v2

    .line 536
    :try_start_0
    invoke-direct {p0}, Landroid/support/v7/internal/widget/j;->cT()V

    .line 538
    iget-object v0, p0, Landroid/support/v7/internal/widget/j;->mV:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/k;

    .line 539
    iget-object v1, p0, Landroid/support/v7/internal/widget/j;->mV:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/widget/k;

    .line 542
    if-eqz v1, :cond_0

    .line 544
    iget v1, v1, Landroid/support/v7/internal/widget/k;->weight:F

    iget v3, v0, Landroid/support/v7/internal/widget/k;->weight:F

    sub-float/2addr v1, v3

    const/high16 v3, 0x40a0

    add-float/2addr v1, v3

    .line 550
    :goto_0
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/support/v7/internal/widget/k;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/support/v7/internal/widget/k;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    new-instance v0, Landroid/support/v7/internal/widget/m;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v3, v4, v5, v1}, Landroid/support/v7/internal/widget/m;-><init>(Landroid/content/ComponentName;JF)V

    .line 555
    invoke-direct {p0, v0}, Landroid/support/v7/internal/widget/j;->a(Landroid/support/v7/internal/widget/m;)Z

    .line 556
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 547
    :cond_0
    const/high16 v1, 0x3f80

    goto :goto_0

    .line 556
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final a(Landroid/content/pm/ResolveInfo;)I
    .locals 5
    .parameter

    .prologue
    .line 427
    iget-object v2, p0, Landroid/support/v7/internal/widget/j;->mU:Ljava/lang/Object;

    monitor-enter v2

    .line 428
    :try_start_0
    invoke-direct {p0}, Landroid/support/v7/internal/widget/j;->cT()V

    .line 429
    iget-object v3, p0, Landroid/support/v7/internal/widget/j;->mV:Ljava/util/List;

    .line 430
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 431
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_1

    .line 432
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/k;

    .line 433
    iget-object v0, v0, Landroid/support/v7/internal/widget/k;->resolveInfo:Landroid/content/pm/ResolveInfo;

    if-ne v0, p1, :cond_0

    .line 434
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 437
    :goto_1
    return v0

    .line 431
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 437
    :cond_1
    const/4 v0, -0x1

    monitor-exit v2

    goto :goto_1

    .line 438
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final cR()I
    .locals 2

    .prologue
    .line 398
    iget-object v1, p0, Landroid/support/v7/internal/widget/j;->mU:Ljava/lang/Object;

    monitor-enter v1

    .line 399
    :try_start_0
    invoke-direct {p0}, Landroid/support/v7/internal/widget/j;->cT()V

    .line 400
    iget-object v0, p0, Landroid/support/v7/internal/widget/j;->mV:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 401
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final cS()Landroid/content/pm/ResolveInfo;
    .locals 3

    .prologue
    .line 515
    iget-object v1, p0, Landroid/support/v7/internal/widget/j;->mU:Ljava/lang/Object;

    monitor-enter v1

    .line 516
    :try_start_0
    invoke-direct {p0}, Landroid/support/v7/internal/widget/j;->cT()V

    .line 517
    iget-object v0, p0, Landroid/support/v7/internal/widget/j;->mV:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 518
    iget-object v0, p0, Landroid/support/v7/internal/widget/j;->mV:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/k;

    iget-object v0, v0, Landroid/support/v7/internal/widget/k;->resolveInfo:Landroid/content/pm/ResolveInfo;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    :goto_0
    return-object v0

    .line 520
    :cond_0
    monitor-exit v1

    .line 521
    const/4 v0, 0x0

    goto :goto_0

    .line 520
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final getHistorySize()I
    .locals 2

    .prologue
    .line 657
    iget-object v1, p0, Landroid/support/v7/internal/widget/j;->mU:Ljava/lang/Object;

    monitor-enter v1

    .line 658
    :try_start_0
    invoke-direct {p0}, Landroid/support/v7/internal/widget/j;->cT()V

    .line 659
    iget-object v0, p0, Landroid/support/v7/internal/widget/j;->mW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 660
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
