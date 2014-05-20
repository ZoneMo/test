.class public final Lcom/tencent/mm/storage/ab;
.super Lcom/tencent/mm/sdk/e/ah;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ap/h;


# static fields
.field public static final cjC:[Ljava/lang/String;

.field private static ghA:[I


# instance fields
.field private crf:Lcom/tencent/mm/sdk/e/af;

.field private emojiPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 50
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/tencent/mm/storage/y;->cfX:Lcom/tencent/mm/sdk/e/ae;

    const-string v3, "EmojiInfo"

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/e/ah;->a(Lcom/tencent/mm/sdk/e/ae;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/mm/storage/ab;->cjC:[Ljava/lang/String;

    .line 1460
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/mm/storage/ab;->ghA:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/tencent/mm/sdk/e/af;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 101
    sget-object v0, Lcom/tencent/mm/storage/y;->cfX:Lcom/tencent/mm/sdk/e/ae;

    const-string v1, "EmojiInfo"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/tencent/mm/sdk/e/ah;-><init>(Lcom/tencent/mm/sdk/e/af;Lcom/tencent/mm/sdk/e/ae;Ljava/lang/String;[Ljava/lang/String;)V

    .line 102
    iput-object p2, p0, Lcom/tencent/mm/storage/ab;->emojiPath:Ljava/lang/String;

    .line 103
    iput-object p1, p0, Lcom/tencent/mm/storage/ab;->crf:Lcom/tencent/mm/sdk/e/af;

    .line 105
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1406
    packed-switch p3, :pswitch_data_0

    const/4 v3, -0x1

    .line 1423
    :goto_0
    sget-object v1, Lcom/tencent/mm/storage/ab;->ghA:[I

    array-length v2, v1

    move v0, v6

    :goto_1
    if-ge v0, v2, :cond_1

    aget v4, v1, v0

    if-ne v3, v4, :cond_0

    move v0, v5

    .line 1424
    :goto_2
    if-eqz v0, :cond_2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    .line 1426
    invoke-static/range {v0 .. v5}, Lcom/tencent/mm/storage/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    .line 1429
    :goto_3
    return-object v0

    .line 1406
    :pswitch_0
    const/4 v3, 0x2

    goto :goto_0

    :pswitch_1
    const/4 v3, 0x4

    goto :goto_0

    :pswitch_2
    const/16 v3, 0x8

    goto :goto_0

    .line 1423
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v6

    goto :goto_2

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, v6

    .line 1429
    invoke-static/range {v0 .. v5}, Lcom/tencent/mm/storage/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1406
    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1353
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1354
    const-string v0, "MicroMsg.EmojiInfoStorage"

    const-string v1, "getIconPath : productId is null."

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1397
    :cond_0
    :goto_0
    return-object v0

    .line 1357
    :cond_1
    const/4 v0, 0x0

    .line 1359
    packed-switch p3, :pswitch_data_0

    .line 1388
    const-string v1, "MicroMsg.EmojiInfoStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getIconPath: unknown icon type:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    :goto_1
    if-lez p4, :cond_0

    if-eqz p5, :cond_0

    .line 1393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-lez p4, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1361
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/a/f;->h([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1364
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1367
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_panel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1370
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_panel_enable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1373
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_banner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1376
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1379
    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_cover"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1382
    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preview"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1385
    :pswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_tagtip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1393
    :cond_2
    const-string v0, ""

    goto/16 :goto_2

    .line 1359
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private a([Ljava/io/InputStream;)Ljava/util/List;
    .locals 14
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 884
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 886
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 891
    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v7

    .line 892
    array-length v8, p1

    move v1, v2

    :goto_0
    if-ge v1, v8, :cond_4

    aget-object v0, p1, v1

    .line 893
    if-eqz v0, :cond_3

    .line 894
    invoke-virtual {v7, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 898
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 899
    const-string v3, "catalog"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    move v3, v2

    .line 902
    :goto_1
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 904
    invoke-interface {v9, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 905
    const-string v4, "id"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 915
    const-string v4, "emoji"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    move v4, v2

    .line 916
    :goto_2
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v4, v0, :cond_2

    .line 917
    new-instance v12, Lcom/tencent/mm/storage/y;

    iget-object v0, p0, Lcom/tencent/mm/storage/ab;->emojiPath:Ljava/lang/String;

    invoke-direct {v12, v0}, Lcom/tencent/mm/storage/y;-><init>(Ljava/lang/String;)V

    .line 918
    invoke-interface {v11, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 919
    const-string v5, "md5"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Lcom/tencent/mm/storage/y;->eX(Ljava/lang/String;)V

    .line 921
    invoke-virtual {v12}, Lcom/tencent/mm/storage/y;->aBE()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 922
    invoke-virtual {v12, v10}, Lcom/tencent/mm/storage/y;->mb(I)V

    .line 923
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Lcom/tencent/mm/storage/y;->uA(Ljava/lang/String;)V

    .line 924
    const-string v5, "name"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Lcom/tencent/mm/storage/y;->setName(Ljava/lang/String;)V

    .line 925
    const-string v5, "type"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v12, v5}, Lcom/tencent/mm/storage/y;->setType(I)V

    .line 926
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    instance-of v5, v0, Lorg/w3c/dom/CharacterData;

    if-eqz v5, :cond_1

    check-cast v0, Lorg/w3c/dom/CharacterData;

    invoke-interface {v0}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v5

    .line 927
    :goto_3
    invoke-virtual {v12}, Lcom/tencent/mm/storage/y;->getType()I

    move-result v0

    sget v13, Lcom/tencent/mm/storage/y;->ghq:I

    if-ne v0, v13, :cond_5

    .line 928
    new-instance v0, Ljava/lang/String;

    invoke-static {v5}, Lcom/tencent/mm/a/a;->decode(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    .line 930
    :goto_4
    invoke-virtual {v12, v0}, Lcom/tencent/mm/storage/y;->setContent(Ljava/lang/String;)V

    .line 931
    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 916
    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    .line 926
    :cond_1
    const-string v5, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 902
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    .line 892
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 937
    :catch_0
    move-exception v0

    .line 938
    const-string v1, "MicroMsg.EmojiInfoStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "parse xml error; "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    :cond_4
    return-object v6

    :cond_5
    move-object v0, v5

    goto :goto_4
.end method

.method public static aT(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/a/f;->h([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x140

    const/16 v0, 0xa0

    const/16 v3, 0x32

    const/16 v2, 0x30

    const/16 v1, 0x46

    .line 1192
    packed-switch p2, :pswitch_data_0

    .line 1219
    invoke-static {p0, v1}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v0

    .line 1220
    invoke-static {p0, v1}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v1

    .line 1223
    :goto_0
    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/h;->a(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 1195
    :pswitch_0
    invoke-static {p0, v3}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v0

    .line 1196
    invoke-static {p0, v3}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v1

    goto :goto_0

    .line 1199
    :pswitch_1
    invoke-static {p0, v0}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v0

    .line 1200
    invoke-static {p0, v4}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v1

    goto :goto_0

    .line 1203
    :pswitch_2
    invoke-static {p0, v0}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v0

    .line 1204
    invoke-static {p0, v4}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v1

    goto :goto_0

    .line 1208
    :pswitch_3
    const/16 v0, 0x1a

    invoke-static {p0, v0}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v0

    move v1, v0

    .line 1209
    goto :goto_0

    .line 1211
    :pswitch_4
    invoke-static {p0, v1}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v0

    .line 1212
    invoke-static {p0, v1}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v1

    goto :goto_0

    .line 1215
    :pswitch_5
    invoke-static {p0, v2}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v0

    .line 1216
    invoke-static {p0, v2}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v1

    goto :goto_0

    .line 1192
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private l(Lcom/tencent/mm/storage/y;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 497
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/mm/storage/y;->aBE()Z

    move-result v1

    if-nez v1, :cond_2

    .line 498
    :cond_0
    const-string v1, "MicroMsg.EmojiInfoStorage"

    const-string v2, "insert assertion!, invalid emojiInfo"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->aM(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    :cond_1
    :goto_0
    return v0

    .line 502
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/mm/storage/y;->aBG()I

    .line 506
    invoke-virtual {p1}, Lcom/tencent/mm/storage/y;->oa()Landroid/content/ContentValues;

    move-result-object v1

    .line 507
    iget-object v2, p0, Lcom/tencent/mm/storage/ab;->crf:Lcom/tencent/mm/sdk/e/af;

    const-string v3, "EmojiInfo"

    const-string v4, "md5"

    invoke-interface {v2, v3, v4, v1}, Lcom/tencent/mm/sdk/e/af;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 508
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_3

    .line 509
    invoke-virtual {p1}, Lcom/tencent/mm/storage/y;->yK()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/tencent/mm/storage/ab;->th(Ljava/lang/String;)V

    .line 512
    :cond_3
    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private me(I)Z
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 776
    iget-object v2, p0, Lcom/tencent/mm/storage/ab;->crf:Lcom/tencent/mm/sdk/e/af;

    const-string v3, "EmojiInfo"

    const-string v4, "catalog=?"

    new-array v5, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-interface {v2, v3, v4, v5}, Lcom/tencent/mm/sdk/e/af;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 777
    if-ltz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static mg(I)I
    .locals 1
    .parameter

    .prologue
    .line 1448
    sparse-switch p0, :sswitch_data_0

    .line 1456
    sget v0, Lcom/tencent/mm/storage/y;->ghc:I

    :goto_0
    return v0

    .line 1450
    :sswitch_0
    const/16 v0, 0x52

    goto :goto_0

    .line 1452
    :sswitch_1
    const/16 v0, 0x53

    goto :goto_0

    .line 1454
    :sswitch_2
    const/16 v0, 0x54

    goto :goto_0

    .line 1448
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public final KY()I
    .locals 3

    .prologue
    .line 749
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select  count(*) from EmojiInfo where catalog="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/tencent/mm/storage/w;->ggX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " or catalog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/tencent/mm/storage/w;->ggY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 751
    iget-object v1, p0, Lcom/tencent/mm/storage/ab;->crf:Lcom/tencent/mm/sdk/e/af;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/tencent/mm/sdk/e/af;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 752
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 753
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 754
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 755
    return v1
.end method

.method public final KZ()Ljava/util/List;
    .locals 4

    .prologue
    .line 691
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 696
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "select * from EmojiInfo where catalog="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/tencent/mm/storage/w;->ggX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or catalog="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/tencent/mm/storage/w;->ggY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 704
    iget-object v2, p0, Lcom/tencent/mm/storage/ab;->crf:Lcom/tencent/mm/sdk/e/af;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/tencent/mm/sdk/e/af;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 705
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 706
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 709
    :cond_0
    new-instance v2, Lcom/tencent/mm/storage/y;

    iget-object v3, p0, Lcom/tencent/mm/storage/ab;->emojiPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/tencent/mm/storage/y;-><init>(Ljava/lang/String;)V

    .line 710
    invoke-virtual {v2, v1}, Lcom/tencent/mm/storage/y;->convertFrom(Landroid/database/Cursor;)V

    .line 711
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 713
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 715
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 716
    return-object v0
.end method

.method public final a(Lcom/tencent/mm/ap/g;)I
    .locals 1
    .parameter

    .prologue
    .line 114
    if-eqz p1, :cond_0

    .line 115
    iput-object p1, p0, Lcom/tencent/mm/storage/ab;->crf:Lcom/tencent/mm/sdk/e/af;

    .line 117
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroid/content/Context;ILcom/tencent/mm/storage/y;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/high16 v1, 0x3fc0

    .line 792
    .line 794
    :try_start_0
    invoke-virtual {p3}, Lcom/tencent/mm/storage/y;->aBD()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 795
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/tencent/mm/storage/y;->aBx()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/tencent/mm/storage/y;->aBK()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/tencent/mm/storage/y;->yK()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 800
    :goto_0
    :try_start_1
    invoke-static {p1}, Lcom/tencent/mm/an/a;->getDensity(Landroid/content/Context;)F

    move-result v3

    cmpl-float v3, v3, v1

    if-lez v3, :cond_2

    .line 801
    :goto_1
    invoke-static {v2, v1}, Lcom/tencent/mm/sdk/platformtools/h;->a(Ljava/io/InputStream;F)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v0

    .line 808
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 817
    :cond_0
    :goto_2
    return-object v0

    .line 797
    :cond_1
    :try_start_3
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/tencent/mm/storage/y;->aBx()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/tencent/mm/storage/y;->yK()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 802
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 803
    :goto_3
    :try_start_4
    const-string v3, "MicroMsg.EmojiInfoStorage"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    const-string v1, ""

    invoke-virtual {p3, v1}, Lcom/tencent/mm/storage/y;->uB(Ljava/lang/String;)V

    .line 806
    invoke-virtual {p0, p3}, Lcom/tencent/mm/storage/ab;->m(Lcom/tencent/mm/storage/y;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 808
    if-eqz v2, :cond_0

    .line 810
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 812
    :catch_1
    move-exception v1

    goto :goto_2

    .line 800
    :cond_2
    :try_start_6
    invoke-static {p1}, Lcom/tencent/mm/an/a;->getDensity(Landroid/content/Context;)F
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_4

    move-result v1

    goto :goto_1

    .line 808
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_4
    if-eqz v2, :cond_3

    .line 810
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 812
    :cond_3
    :goto_5
    throw v0

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_5

    .line 808
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 802
    :catch_4
    move-exception v1

    goto :goto_3
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1234
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1235
    const-string v0, "MicroMsg.EmojiInfoStorage"

    const-string v1, "getIcon : productId is null."

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    :cond_0
    const-string v1, ""

    .line 1238
    if-eqz p5, :cond_2

    .line 1240
    const/4 v0, 0x4

    new-array v8, v0, [I

    const/4 v0, 0x0

    const/4 v2, -0x1

    aput v2, v8, v0

    const/4 v0, 0x1

    sget v2, Lcom/tencent/mm/storage/y;->ghn:I

    aput v2, v8, v0

    const/4 v0, 0x2

    sget v2, Lcom/tencent/mm/storage/y;->gho:I

    aput v2, v8, v0

    const/4 v0, 0x3

    sget v2, Lcom/tencent/mm/storage/y;->ghp:I

    aput v2, v8, v0

    .line 1241
    const/4 v6, 0x0

    .line 1242
    array-length v9, v8

    const/4 v0, 0x0

    move v7, v0

    move-object v0, v1

    :goto_0
    if-ge v7, v9, :cond_4

    aget v4, v8, v7

    .line 1243
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/mm/storage/ab;->a(Ljava/lang/String;ILjava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    .line 1244
    invoke-static {v1}, Lcom/tencent/mm/a/c;->as(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1245
    const/4 v0, 0x1

    move v10, v0

    move-object v0, v1

    move v1, v10

    .line 1250
    :goto_1
    if-nez v1, :cond_3

    .line 1251
    const-string v1, "MicroMsg.EmojiInfoStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "banner icon does not exist. icon path :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "...., icon type:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    const/4 v0, 0x0

    .line 1294
    :goto_2
    return-object v0

    .line 1242
    :cond_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    move-object v0, v1

    goto :goto_0

    .line 1256
    :cond_2
    invoke-virtual {p0, p2, p3, p4}, Lcom/tencent/mm/storage/ab;->i(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1257
    invoke-static {v0}, Lcom/tencent/mm/a/c;->as(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1258
    const-string v1, "MicroMsg.EmojiInfoStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "icon does not exist. icon path :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", icon type:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    const/4 v0, 0x0

    goto :goto_2

    .line 1294
    :cond_3
    invoke-static {p1, v0, p3}, Lcom/tencent/mm/storage/ab;->i(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    :cond_4
    move v1, v6

    goto :goto_1
.end method

.method public final declared-synchronized a(Ljava/lang/String;ILjava/lang/String;Z)Lcom/tencent/mm/storage/y;
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1136
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1137
    const-string v1, "MicroMsg.EmojiInfoStorage"

    const-string v2, "getIcon : productId is null."

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1138
    const/4 v1, 0x0

    .line 1180
    :goto_0
    monitor-exit p0

    return-object v1

    .line 1141
    :cond_0
    :try_start_1
    const-string v2, ""

    .line 1142
    new-instance v7, Lcom/tencent/mm/storage/y;

    invoke-direct {v7}, Lcom/tencent/mm/storage/y;-><init>()V

    .line 1143
    if-eqz p4, :cond_4

    .line 1145
    const/4 v1, 0x3

    new-array v10, v1, [I

    const/4 v1, 0x0

    sget v3, Lcom/tencent/mm/storage/y;->gho:I

    aput v3, v10, v1

    const/4 v1, 0x1

    sget v3, Lcom/tencent/mm/storage/y;->ghn:I

    aput v3, v10, v1

    const/4 v1, 0x2

    sget v3, Lcom/tencent/mm/storage/y;->ghp:I

    aput v3, v10, v1

    .line 1146
    const/4 v8, 0x0

    .line 1147
    array-length v11, v10

    const/4 v1, 0x0

    move v9, v1

    move-object v1, v2

    :goto_1
    if-ge v9, v11, :cond_6

    aget v5, v10, v9

    .line 1148
    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/mm/storage/ab;->a(Ljava/lang/String;ILjava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2

    .line 1149
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1150
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1151
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v12, 0x1

    cmp-long v3, v3, v12

    if-gez v3, :cond_2

    .line 1153
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1147
    :cond_1
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    move-object v1, v2

    goto :goto_1

    .line 1155
    :cond_2
    if-lez v5, :cond_3

    :goto_2
    invoke-virtual {v7, v5}, Lcom/tencent/mm/storage/y;->setType(I)V

    .line 1156
    const/4 v1, 0x1

    .line 1162
    :goto_3
    if-nez v1, :cond_5

    .line 1163
    const-string v1, "MicroMsg.EmojiInfoStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "banner icon does not exist. icon path :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "...., icon type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    const/4 v1, 0x0

    goto :goto_0

    .line 1155
    :cond_3
    sget v5, Lcom/tencent/mm/storage/y;->ghn:I

    goto :goto_2

    .line 1168
    :cond_4
    invoke-virtual/range {p0 .. p3}, Lcom/tencent/mm/storage/ab;->i(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1169
    invoke-static {v1}, Lcom/tencent/mm/a/c;->as(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1170
    const-string v2, "MicroMsg.EmojiInfoStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "icon does not exist. icon path :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", icon type:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1175
    :cond_5
    move-object/from16 v0, p3

    invoke-static {p1, v0}, Lcom/tencent/mm/storage/ab;->aT(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1176
    invoke-virtual {v7, v1}, Lcom/tencent/mm/storage/y;->eX(Ljava/lang/String;)V

    .line 1177
    invoke-static/range {p2 .. p2}, Lcom/tencent/mm/storage/ab;->mg(I)I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/tencent/mm/storage/y;->mb(I)V

    .line 1178
    invoke-virtual {v7, p1}, Lcom/tencent/mm/storage/y;->uA(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v7

    .line 1180
    goto/16 :goto_0

    .line 1136
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_6
    move-object v2, v1

    move v1, v8

    goto :goto_3
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)Lcom/tencent/mm/storage/y;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 420
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, v6

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/tencent/mm/storage/ab;->c(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/storage/y;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;IZ)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/tencent/mm/storage/ab;->emojiPath:Ljava/lang/String;

    invoke-static {p1, p3}, Lcom/tencent/mm/storage/ab;->aT(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/tencent/mm/storage/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Lcom/tencent/mm/storage/y;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 821
    const/4 v0, 0x0

    .line 822
    invoke-virtual {p2}, Lcom/tencent/mm/storage/y;->aBG()I

    move-result v1

    sget v2, Lcom/tencent/mm/storage/y;->ghc:I

    if-eq v1, v2, :cond_0

    invoke-virtual {p2}, Lcom/tencent/mm/storage/y;->aBG()I

    move-result v1

    sget v2, Lcom/tencent/mm/storage/y;->ghl:I

    if-eq v1, v2, :cond_0

    invoke-virtual {p2}, Lcom/tencent/mm/storage/y;->aBG()I

    move-result v1

    sget v2, Lcom/tencent/mm/storage/y;->ghk:I

    if-ne v1, v2, :cond_4

    .line 823
    :cond_0
    const/4 v1, 0x0

    .line 827
    :try_start_0
    invoke-virtual {p2}, Lcom/tencent/mm/storage/y;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/tencent/mm/storage/y;->al(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 828
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 832
    if-eqz v1, :cond_1

    .line 834
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 844
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/tencent/mm/storage/y;->getSize()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 845
    invoke-virtual {p2, v0}, Lcom/tencent/mm/storage/y;->setSize(I)V

    .line 846
    invoke-virtual {p0, p2}, Lcom/tencent/mm/storage/ab;->m(Lcom/tencent/mm/storage/y;)Z

    .line 849
    :cond_2
    return-void

    .line 830
    :catch_0
    move-exception v2

    if-eqz v1, :cond_1

    .line 834
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 836
    :catch_1
    move-exception v1

    goto :goto_0

    .line 832
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 834
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 836
    :cond_3
    :goto_1
    throw v0

    .line 841
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/mm/storage/y;->aBx()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tencent/mm/storage/y;->yK()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/a/c;->ar(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 836
    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;[BI)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1485
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p4, :cond_0

    array-length v0, p4

    if-nez v0, :cond_1

    .line 1486
    :cond_0
    const-string v0, "MicroMsg.EmojiInfoStorage"

    const-string v1, "save icon fail. invalid argumnet"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    :goto_0
    return v5

    .line 1490
    :cond_1
    if-lez p5, :cond_2

    const/4 v5, 0x1

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/mm/storage/ab;->a(Ljava/lang/String;ILjava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    .line 1492
    invoke-virtual {p0, p1, v0, p4}, Lcom/tencent/mm/storage/ab;->d(Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result v5

    goto :goto_0
.end method

.method public final aBN()Ljava/util/List;
    .locals 4

    .prologue
    .line 720
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 725
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "select * from EmojiInfo where catalog="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/tencent/mm/storage/w;->ggY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 733
    iget-object v2, p0, Lcom/tencent/mm/storage/ab;->crf:Lcom/tencent/mm/sdk/e/af;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/tencent/mm/sdk/e/af;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 734
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 735
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 738
    :cond_0
    new-instance v2, Lcom/tencent/mm/storage/y;

    iget-object v3, p0, Lcom/tencent/mm/storage/ab;->emojiPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/tencent/mm/storage/y;-><init>(Ljava/lang/String;)V

    .line 739
    invoke-virtual {v2, v1}, Lcom/tencent/mm/storage/y;->convertFrom(Landroid/database/Cursor;)V

    .line 740
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 742
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 744
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 745
    return-object v0
.end method

.method public final aS(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 537
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    .line 550
    :cond_0
    :goto_0
    return v0

    .line 541
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 542
    const-string v2, "md5"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const-string v2, "framesInfo"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    iget-object v2, p0, Lcom/tencent/mm/storage/ab;->crf:Lcom/tencent/mm/sdk/e/af;

    const-string v3, "EmojiInfo"

    const-string v4, "md5"

    invoke-interface {v2, v3, v4, v1}, Lcom/tencent/mm/sdk/e/af;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 550
    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final ay(Ljava/util/List;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1104
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1132
    :cond_0
    :goto_0
    return v0

    .line 1106
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1107
    const-string v1, "UPDATE"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    const-string v1, " EmojiInfo "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1109
    const-string v1, " SET "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1114
    const-string v1, "catalog"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1115
    const-string v1, "="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1116
    sget v1, Lcom/tencent/mm/storage/y;->ggZ:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1117
    const-string v1, " where "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1118
    const-string v1, "md5"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1119
    const-string v1, " IN ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    .line 1120
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 1121
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1122
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_2

    .line 1123
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1120
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1126
    :cond_3
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1127
    const-string v0, "MicroMsg.EmojiInfoStorage"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    iget-object v0, p0, Lcom/tencent/mm/storage/ab;->crf:Lcom/tencent/mm/sdk/e/af;

    const-string v1, "EmojiInfo"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/e/af;->aQ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1129
    const-string v0, "delete_emoji_info_notify"

    invoke-virtual {p0, v0}, Lcom/tencent/mm/storage/ab;->th(Ljava/lang/String;)V

    .line 1132
    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/storage/y;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 424
    invoke-virtual/range {p0 .. p8}, Lcom/tencent/mm/storage/ab;->c(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/storage/y;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/tencent/mm/sdk/e/ad;)Z
    .locals 1
    .parameter

    .prologue
    .line 47
    check-cast p1, Lcom/tencent/mm/storage/y;

    invoke-direct {p0, p1}, Lcom/tencent/mm/storage/ab;->l(Lcom/tencent/mm/storage/y;)Z

    move-result v0

    return v0
.end method

.method public final bK(Landroid/content/Context;)Z
    .locals 13
    .parameter

    .prologue
    .line 140
    const-string v0, "86cb157e9c44b2c9934e4e430790776d"

    invoke-virtual {p0, v0}, Lcom/tencent/mm/storage/ab;->uF(Ljava/lang/String;)Lcom/tencent/mm/storage/y;

    move-result-object v0

    .line 141
    const-string v1, "68f9864ca5c0a5d823ed7184e113a4aa"

    invoke-virtual {p0, v1}, Lcom/tencent/mm/storage/ab;->uF(Ljava/lang/String;)Lcom/tencent/mm/storage/y;

    move-result-object v1

    .line 143
    sget v2, Lcom/tencent/mm/storage/y;->ghd:I

    invoke-virtual {p0, v2}, Lcom/tencent/mm/storage/ab;->mf(I)I

    move-result v3

    .line 146
    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/tencent/mm/storage/y;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    if-gt v3, v0, :cond_2

    .line 149
    :cond_1
    sget v0, Lcom/tencent/mm/storage/y;->ghc:I

    invoke-direct {p0, v0}, Lcom/tencent/mm/storage/ab;->me(I)Z

    .line 150
    sget v0, Lcom/tencent/mm/storage/y;->ghl:I

    invoke-direct {p0, v0}, Lcom/tencent/mm/storage/ab;->me(I)Z

    .line 151
    sget v0, Lcom/tencent/mm/storage/y;->ghk:I

    invoke-direct {p0, v0}, Lcom/tencent/mm/storage/ab;->me(I)Z

    .line 163
    :cond_2
    const-string v0, "9bd1281af3a31710a45b84d736363691"

    invoke-virtual {p0, v0}, Lcom/tencent/mm/storage/ab;->uF(Ljava/lang/String;)Lcom/tencent/mm/storage/y;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/tencent/mm/storage/y;->aBG()I

    move-result v0

    sget v1, Lcom/tencent/mm/storage/y;->ghc:I

    if-ne v0, v1, :cond_3

    .line 165
    sget v0, Lcom/tencent/mm/storage/y;->ghc:I

    invoke-direct {p0, v0}, Lcom/tencent/mm/storage/ab;->me(I)Z

    .line 166
    sget v0, Lcom/tencent/mm/storage/y;->ghl:I

    invoke-direct {p0, v0}, Lcom/tencent/mm/storage/ab;->me(I)Z

    .line 167
    sget v0, Lcom/tencent/mm/storage/y;->ghk:I

    invoke-direct {p0, v0}, Lcom/tencent/mm/storage/ab;->me(I)Z

    .line 171
    :cond_3
    const-string v0, "icon_002_cover.png"

    invoke-static {p1, v0}, Lcom/tencent/mm/storage/y;->al(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_4

    .line 173
    const-string v1, "MicroMsg.EmojiInfoStorage"

    const-string v2, "update emoji tuzi  for 4.4"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    sget v1, Lcom/tencent/mm/storage/y;->ghc:I

    invoke-direct {p0, v1}, Lcom/tencent/mm/storage/ab;->me(I)Z

    .line 175
    sget v1, Lcom/tencent/mm/storage/y;->ghl:I

    invoke-direct {p0, v1}, Lcom/tencent/mm/storage/ab;->me(I)Z

    .line 176
    sget v1, Lcom/tencent/mm/storage/y;->ghk:I

    invoke-direct {p0, v1}, Lcom/tencent/mm/storage/ab;->me(I)Z

    .line 179
    :cond_4
    if-eqz v0, :cond_5

    .line 180
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 188
    :cond_5
    :goto_0
    sget v0, Lcom/tencent/mm/storage/y;->ghc:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/storage/ab;->mf(I)I

    move-result v0

    if-eqz v0, :cond_6

    .line 189
    const/4 v0, 0x1

    .line 240
    :goto_1
    return v0

    .line 192
    :cond_6
    const/4 v2, 0x0

    .line 193
    const/4 v1, 0x0

    .line 195
    :try_start_1
    const-string v0, "MicroMsg.EmojiInfoStorage"

    const-string v4, "init start."

    invoke-static {v0, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 197
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v6, "custom_emoji/manifest.xml"

    invoke-virtual {v0, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 198
    if-nez v3, :cond_7

    .line 199
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v3, "art_emoji/manifest.xml"

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 201
    :cond_7
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/InputStream;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-direct {p0, v0}, Lcom/tencent/mm/storage/ab;->a([Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v6

    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 203
    const-string v0, "MicroMsg.EmojiInfoStorage"

    const-string v3, "parse xml time: %d ms"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    sub-long v4, v7, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v9, v10

    invoke-static {v0, v3, v9}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 214
    if-eqz v6, :cond_8

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 215
    if-eqz v6, :cond_8

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_a

    .line 221
    :cond_8
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 222
    const-string v0, "MicroMsg.EmojiInfoStorage"

    const-string v5, "insert time: %d ms"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    sub-long/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v6, v9

    invoke-static {v0, v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    const-string v0, "MicroMsg.EmojiInfoStorage"

    const-string v3, "init end."

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 231
    if-eqz v2, :cond_9

    if-eqz v1, :cond_9

    .line 232
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 233
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 240
    :cond_9
    :goto_3
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 215
    :cond_a
    const/4 v0, 0x0

    const-wide/16 v3, -0x1

    :try_start_3
    iget-object v5, p0, Lcom/tencent/mm/storage/ab;->crf:Lcom/tencent/mm/sdk/e/af;

    instance-of v5, v5, Lcom/tencent/mm/ap/i;

    if-eqz v5, :cond_e

    iget-object v0, p0, Lcom/tencent/mm/storage/ab;->crf:Lcom/tencent/mm/sdk/e/af;

    check-cast v0, Lcom/tencent/mm/ap/i;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/ap/i;->ca(J)J

    move-result-wide v3

    move-object v5, v0

    :goto_4
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/y;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/y;->oa()Landroid/content/ContentValues;

    move-result-object v0

    iget-object v9, p0, Lcom/tencent/mm/storage/ab;->crf:Lcom/tencent/mm/sdk/e/af;

    const-string v10, "EmojiInfo"

    const-string v11, "md5"

    invoke-interface {v9, v10, v11, v0}, Lcom/tencent/mm/sdk/e/af;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v0, v9, v11

    if-gez v0, :cond_b

    if-eqz v5, :cond_8

    invoke-virtual {v5, v3, v4}, Lcom/tencent/mm/ap/i;->cb(J)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 226
    :catch_0
    move-exception v0

    .line 227
    :try_start_4
    const-string v3, "MicroMsg.EmojiInfoStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "init db error. "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 231
    if-eqz v2, :cond_9

    if-eqz v1, :cond_9

    .line 232
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 233
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 236
    :catch_1
    move-exception v0

    goto :goto_3

    .line 215
    :cond_c
    if-eqz v5, :cond_8

    :try_start_6
    invoke-virtual {v5, v3, v4}, Lcom/tencent/mm/ap/i;->cb(J)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_2

    .line 230
    :catchall_0
    move-exception v0

    .line 231
    if-eqz v2, :cond_d

    if-eqz v1, :cond_d

    .line 232
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 233
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 236
    :cond_d
    :goto_5
    throw v0

    :catch_2
    move-exception v0

    goto/16 :goto_0

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v0

    goto/16 :goto_3

    :cond_e
    move-object v5, v0

    goto :goto_4
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/storage/y;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 428
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    .line 429
    :cond_0
    const-string v0, "MicroMsg.EmojiInfoStorage"

    const-string v2, "create assertion!, invalid md5"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->aM(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    :cond_1
    :goto_0
    return-object v1

    .line 432
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_5

    :cond_3
    const-string v0, "MicroMsg.EmojiInfoStorage"

    const-string v2, "create assertion!, invalid md5"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->aM(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 434
    :cond_4
    :goto_1
    invoke-direct {p0, v0}, Lcom/tencent/mm/storage/ab;->l(Lcom/tencent/mm/storage/y;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 435
    const-string v1, "create_emoji_info_notify"

    invoke-virtual {p0, v1}, Lcom/tencent/mm/storage/ab;->th(Ljava/lang/String;)V

    move-object v1, v0

    .line 436
    goto :goto_0

    .line 432
    :cond_5
    invoke-virtual {p0, p1}, Lcom/tencent/mm/storage/ab;->uF(Ljava/lang/String;)Lcom/tencent/mm/storage/y;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance v0, Lcom/tencent/mm/storage/y;

    iget-object v2, p0, Lcom/tencent/mm/storage/ab;->emojiPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/tencent/mm/storage/y;-><init>(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v0, p1}, Lcom/tencent/mm/storage/y;->eX(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/tencent/mm/storage/y;->ux(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/tencent/mm/storage/y;->mb(I)V

    invoke-virtual {v0, p4}, Lcom/tencent/mm/storage/y;->setType(I)V

    invoke-virtual {v0, p5}, Lcom/tencent/mm/storage/y;->setSize(I)V

    sget v2, Lcom/tencent/mm/storage/y;->ght:I

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/y;->setState(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/y;->aBI()V

    invoke-virtual {v0, p6}, Lcom/tencent/mm/storage/y;->uy(Ljava/lang/String;)V

    invoke-virtual {v0, p7}, Lcom/tencent/mm/storage/y;->uz(Ljava/lang/String;)V

    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0, p8}, Lcom/tencent/mm/storage/y;->uA(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final c(Ljava/util/List;Ljava/lang/String;)Z
    .locals 15
    .parameter
    .parameter

    .prologue
    .line 1529
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1530
    :cond_0
    const-string v1, "MicroMsg.EmojiInfoStorage"

    const-string v2, "insert emoji list faild. list is null or size is 0."

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    const/4 v1, 0x0

    .line 1568
    :goto_0
    return v1

    .line 1534
    :cond_1
    const/4 v3, 0x0

    .line 1535
    const-wide/16 v1, -0x1

    .line 1536
    iget-object v4, p0, Lcom/tencent/mm/storage/ab;->crf:Lcom/tencent/mm/sdk/e/af;

    instance-of v4, v4, Lcom/tencent/mm/ap/i;

    if-eqz v4, :cond_6

    .line 1537
    iget-object v1, p0, Lcom/tencent/mm/storage/ab;->crf:Lcom/tencent/mm/sdk/e/af;

    check-cast v1, Lcom/tencent/mm/ap/i;

    .line 1538
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/ap/i;->ca(J)J

    move-result-wide v2

    move-object v5, v1

    move-wide v13, v2

    move-wide v3, v13

    .line 1542
    :goto_1
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/tencent/mm/storage/ab;->je(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1543
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1544
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/storage/y;

    .line 1545
    invoke-virtual {v1}, Lcom/tencent/mm/storage/y;->yK()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1548
    :cond_2
    const/4 v1, 0x0

    move v2, v1

    :goto_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    .line 1549
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/storage/y;

    .line 1550
    iget-object v7, p0, Lcom/tencent/mm/storage/ab;->crf:Lcom/tencent/mm/sdk/e/af;

    const-string v8, "EmojiInfo"

    const-string v9, "md5"

    invoke-virtual {v1}, Lcom/tencent/mm/storage/y;->oa()Landroid/content/ContentValues;

    move-result-object v10

    invoke-interface {v7, v8, v9, v10}, Lcom/tencent/mm/sdk/e/af;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1551
    invoke-virtual {v1}, Lcom/tencent/mm/storage/y;->yK()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1548
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    .line 1555
    :cond_3
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1556
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1557
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1558
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1559
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/storage/y;

    .line 1560
    const-string v7, ""

    iput-object v7, v1, Lcom/tencent/mm/storage/y;->field_groupId:Ljava/lang/String;

    .line 1561
    iget-object v7, p0, Lcom/tencent/mm/storage/ab;->crf:Lcom/tencent/mm/sdk/e/af;

    const-string v8, "EmojiInfo"

    invoke-virtual {v1}, Lcom/tencent/mm/storage/y;->oa()Landroid/content/ContentValues;

    move-result-object v9

    const-string v10, "md5=?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v2, v11, v12

    invoke-interface {v7, v8, v9, v10, v11}, Lcom/tencent/mm/sdk/e/af;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1562
    const-string v2, "MicroMsg.EmojiInfoStorage"

    const-string v7, "jacks modify excess emoji to %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v1, v1, Lcom/tencent/mm/storage/y;->field_groupId:Ljava/lang/String;

    aput-object v1, v8, v9

    invoke-static {v2, v7, v8}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 1565
    :cond_4
    if-eqz v5, :cond_5

    .line 1566
    invoke-virtual {v5, v3, v4}, Lcom/tencent/mm/ap/i;->cb(J)I

    .line 1568
    :cond_5
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_6
    move-object v5, v3

    move-wide v3, v1

    goto/16 :goto_1
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;[B)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1497
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1498
    const-string v1, "MicroMsg.EmojiInfoStorage"

    const-string v2, "save icon fail. icon path is null."

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    :goto_0
    return v0

    .line 1501
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1502
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1503
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1508
    :goto_1
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1509
    invoke-virtual {v2, p3}, Ljava/io/FileOutputStream;->write([B)V

    .line 1510
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1511
    invoke-virtual {p0, p1}, Lcom/tencent/mm/storage/ab;->th(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1517
    const/4 v0, 0x1

    goto :goto_0

    .line 1505
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    .line 1512
    :catch_0
    move-exception v1

    .line 1513
    const-string v2, "MicroMsg.EmojiInfoStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "saveIcon, exception, e = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final fD(I)Ljava/util/List;
    .locals 4
    .parameter

    .prologue
    .line 633
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 634
    invoke-virtual {p0, p1}, Lcom/tencent/mm/storage/ab;->md(I)Landroid/database/Cursor;

    move-result-object v1

    .line 635
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 636
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 639
    :cond_0
    new-instance v2, Lcom/tencent/mm/storage/y;

    iget-object v3, p0, Lcom/tencent/mm/storage/ab;->emojiPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/tencent/mm/storage/y;-><init>(Ljava/lang/String;)V

    .line 640
    invoke-virtual {v2, v1}, Lcom/tencent/mm/storage/y;->convertFrom(Landroid/database/Cursor;)V

    .line 641
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 643
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 645
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 646
    return-object v0
.end method

.method public final i(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1345
    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/mm/storage/ab;->a(Ljava/lang/String;ILjava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final jc(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 262
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 278
    :cond_0
    :goto_0
    return v0

    .line 265
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "select reserved2 from EmojiInfo where catalog != "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/tencent/mm/storage/y;->ggZ:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and reserved2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/tencent/mm/ap/i;->bQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 268
    iget-object v2, p0, Lcom/tencent/mm/storage/ab;->crf:Lcom/tencent/mm/sdk/e/af;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/tencent/mm/sdk/e/af;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 269
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 270
    :cond_2
    if-eqz v1, :cond_0

    .line 271
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 275
    :cond_3
    if-eqz v1, :cond_4

    .line 276
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 278
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final jd(Ljava/lang/String;)I
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1322
    .line 1323
    const/4 v2, 0x0

    .line 1325
    :try_start_0
    iget-object v1, p0, Lcom/tencent/mm/storage/ab;->crf:Lcom/tencent/mm/sdk/e/af;

    const-string v3, "select count(*) from EmojiInfo where groupId= ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-interface {v1, v3, v4}, Lcom/tencent/mm/sdk/e/af;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1326
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1327
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1331
    if-eqz v2, :cond_0

    .line 1332
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1335
    :cond_0
    :goto_0
    return v0

    .line 1328
    :catch_0
    move-exception v1

    .line 1329
    :try_start_1
    const-string v3, "MicroMsg.EmojiInfoStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Count ProductId fail."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1331
    if-eqz v2, :cond_0

    .line 1332
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1331
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_1

    .line 1332
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method public final je(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1071
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1073
    const-string v5, "SELECT a.*, b.desc FROM EmojiInfo AS a LEFT OUTER JOIN EmojiInfoDesc AS b ON a.md5 = b.md5 AND b.lang =? WHERE a.groupId =? ORDER BY a.idx ASC"

    .line 1075
    const-string v0, "default"

    .line 1076
    const-string v1, "select %s from %s where %s=? and %s=?"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "desc"

    aput-object v7, v6, v3

    const-string v7, "EmojiInfoDesc"

    aput-object v7, v6, v2

    const-string v7, "groupId"

    aput-object v7, v6, v9

    const/4 v7, 0x3

    const-string v8, "lang"

    aput-object v8, v6, v7

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v6, v9, [Ljava/lang/String;

    aput-object p1, v6, v3

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/z;->azj()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    iget-object v7, p0, Lcom/tencent/mm/storage/ab;->crf:Lcom/tencent/mm/sdk/e/af;

    invoke-interface {v7, v1, v6}, Lcom/tencent/mm/sdk/e/af;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4

    move v1, v2

    :goto_0
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    if-eqz v1, :cond_1

    .line 1077
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/z;->azj()Ljava/lang/String;

    move-result-object v0

    .line 1079
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/storage/ab;->crf:Lcom/tencent/mm/sdk/e/af;

    new-array v6, v9, [Ljava/lang/String;

    aput-object v0, v6, v3

    aput-object p1, v6, v2

    invoke-interface {v1, v5, v6}, Lcom/tencent/mm/sdk/e/af;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1081
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 1082
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1085
    :cond_2
    new-instance v1, Lcom/tencent/mm/storage/y;

    iget-object v2, p0, Lcom/tencent/mm/storage/ab;->emojiPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/tencent/mm/storage/y;-><init>(Ljava/lang/String;)V

    .line 1086
    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/y;->convertFrom(Landroid/database/Cursor;)V

    .line 1087
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1089
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1091
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1092
    return-object v4

    :cond_4
    move v1, v3

    goto :goto_0
.end method

.method public final m(Lcom/tencent/mm/storage/y;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 592
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/mm/storage/y;->aBE()Z

    move-result v2

    if-nez v2, :cond_2

    .line 593
    :cond_0
    const-string v0, "MicroMsg.EmojiInfoStorage"

    const-string v2, "insert assertion!, invalid emojiInfo"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->aM(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 603
    :cond_1
    :goto_0
    return v0

    .line 597
    :cond_2
    iget-object v2, p0, Lcom/tencent/mm/storage/ab;->crf:Lcom/tencent/mm/sdk/e/af;

    const-string v3, "EmojiInfo"

    invoke-virtual {p1}, Lcom/tencent/mm/storage/y;->oa()Landroid/content/ContentValues;

    move-result-object v4

    const-string v5, "md5=?"

    new-array v6, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tencent/mm/storage/y;->yK()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/tencent/mm/sdk/e/af;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 598
    if-lez v2, :cond_3

    .line 599
    invoke-virtual {p1}, Lcom/tencent/mm/storage/y;->yK()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/tencent/mm/storage/ab;->th(Ljava/lang/String;)V

    .line 600
    const-string v3, "event_update_emoji"

    invoke-virtual {p0, v3}, Lcom/tencent/mm/storage/ab;->th(Ljava/lang/String;)V

    .line 603
    :cond_3
    if-gtz v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public final md(I)Landroid/database/Cursor;
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 759
    iget-object v0, p0, Lcom/tencent/mm/storage/ab;->crf:Lcom/tencent/mm/sdk/e/af;

    const-string v1, "EmojiInfo"

    const-string v3, "catalog=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v5, v2

    move-object v6, v2

    invoke-interface/range {v0 .. v6}, Lcom/tencent/mm/sdk/e/af;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final mf(I)I
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 781
    iget-object v0, p0, Lcom/tencent/mm/storage/ab;->crf:Lcom/tencent/mm/sdk/e/af;

    const-string v1, "select count(*) from EmojiInfo where catalog= ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/e/af;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 782
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 783
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 784
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 785
    return v1
.end method

.method public final uE(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 516
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    .line 533
    :cond_0
    :goto_0
    return-object v0

    .line 521
    :cond_1
    const-string v1, "select %s from %s where %s=?"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "framesInfo"

    aput-object v3, v2, v5

    const-string v3, "EmojiInfo"

    aput-object v3, v2, v6

    const/4 v3, 0x2

    const-string v4, "md5"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 522
    new-array v2, v6, [Ljava/lang/String;

    aput-object p1, v2, v5

    .line 523
    iget-object v3, p0, Lcom/tencent/mm/storage/ab;->crf:Lcom/tencent/mm/sdk/e/af;

    invoke-interface {v3, v1, v2}, Lcom/tencent/mm/sdk/e/af;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 524
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 525
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 526
    const-string v0, "framesInfo"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 529
    :cond_2
    if-eqz v1, :cond_0

    .line 530
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public final uF(Ljava/lang/String;)Lcom/tencent/mm/storage/y;
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 617
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    .line 629
    :cond_0
    :goto_0
    return-object v2

    .line 622
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/storage/ab;->crf:Lcom/tencent/mm/sdk/e/af;

    const-string v1, "EmojiInfo"

    const-string v3, "md5=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    move-object v6, v2

    invoke-interface/range {v0 .. v6}, Lcom/tencent/mm/sdk/e/af;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 623
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 624
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 625
    new-instance v2, Lcom/tencent/mm/storage/y;

    iget-object v1, p0, Lcom/tencent/mm/storage/ab;->emojiPath:Ljava/lang/String;

    invoke-direct {v2, v1}, Lcom/tencent/mm/storage/y;-><init>(Ljava/lang/String;)V

    .line 626
    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/y;->convertFrom(Landroid/database/Cursor;)V

    .line 628
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public final uG(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 763
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_2

    .line 764
    :cond_0
    const-string v0, "MicroMsg.EmojiInfoStorage"

    const-string v2, "delete by md5 assertion"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->aM(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 772
    :cond_1
    :goto_0
    return v0

    .line 767
    :cond_2
    iget-object v2, p0, Lcom/tencent/mm/storage/ab;->crf:Lcom/tencent/mm/sdk/e/af;

    const-string v3, "EmojiInfo"

    const-string v4, "md5=?"

    new-array v5, v0, [Ljava/lang/String;

    aput-object p1, v5, v1

    invoke-interface {v2, v3, v4, v5}, Lcom/tencent/mm/sdk/e/af;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 769
    if-lez v2, :cond_3

    .line 770
    const-string v3, "event_update_emoji"

    invoke-virtual {p0, v3}, Lcom/tencent/mm/storage/ab;->th(Ljava/lang/String;)V

    .line 772
    :cond_3
    if-gtz v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public final uH(Ljava/lang/String;)Lcom/tencent/mm/storage/y;
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1592
    .line 1594
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select * from EmojiInfo where md5=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1597
    :try_start_0
    iget-object v1, p0, Lcom/tencent/mm/storage/ab;->crf:Lcom/tencent/mm/sdk/e/af;

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Lcom/tencent/mm/sdk/e/af;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1598
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1599
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1600
    new-instance v3, Lcom/tencent/mm/storage/y;

    invoke-direct {v3}, Lcom/tencent/mm/storage/y;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1601
    :try_start_2
    invoke-virtual {v3, v1}, Lcom/tencent/mm/storage/y;->convertFrom(Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v3

    .line 1606
    :goto_0
    if-eqz v1, :cond_0

    .line 1607
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1609
    :cond_0
    :goto_1
    return-object v0

    .line 1603
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    .line 1604
    :goto_2
    :try_start_3
    const-string v3, "MicroMsg.EmojiInfoStorage"

    const-string v4, "get get EmojiInfo fail. md5 id is %s, err: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1606
    if-eqz v2, :cond_0

    .line 1607
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1606
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v2, :cond_1

    .line 1607
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 1606
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 1603
    :catch_1
    move-exception v0

    move-object v7, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_2

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method public final uI(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1619
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1622
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "groupId = \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1624
    :try_start_0
    iget-object v2, p0, Lcom/tencent/mm/storage/ab;->crf:Lcom/tencent/mm/sdk/e/af;

    const-string v3, "EmojiInfo"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v4}, Lcom/tencent/mm/sdk/e/af;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    .line 1629
    :cond_0
    :goto_0
    return v0

    .line 1625
    :catch_0
    move-exception v1

    .line 1626
    const-string v2, "MicroMsg.EmojiInfoStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Delete By ProductId fail."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final zz()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    const-string v0, "EmojiInfo"

    return-object v0
.end method
