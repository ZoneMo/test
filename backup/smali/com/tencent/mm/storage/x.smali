.class public final Lcom/tencent/mm/storage/x;
.super Lcom/tencent/mm/sdk/e/ah;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ap/h;


# static fields
.field public static final cjC:[Ljava/lang/String;


# instance fields
.field private crf:Lcom/tencent/mm/sdk/e/af;

.field private gha:Z

.field private ghb:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/tencent/mm/storage/w;->cfX:Lcom/tencent/mm/sdk/e/ae;

    const-string v3, "EmojiGroupInfo"

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/e/ah;->a(Lcom/tencent/mm/sdk/e/ae;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/mm/storage/x;->cjC:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/sdk/e/af;)V
    .locals 3
    .parameter

    .prologue
    .line 51
    sget-object v0, Lcom/tencent/mm/storage/w;->cfX:Lcom/tencent/mm/sdk/e/ae;

    const-string v1, "EmojiGroupInfo"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/tencent/mm/sdk/e/ah;-><init>(Lcom/tencent/mm/sdk/e/af;Lcom/tencent/mm/sdk/e/ae;Ljava/lang/String;[Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/storage/x;->gha:Z

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/storage/x;->ghb:Z

    .line 52
    iput-object p1, p0, Lcom/tencent/mm/storage/x;->crf:Lcom/tencent/mm/sdk/e/af;

    .line 53
    return-void
.end method

.method private aBo()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 199
    const/4 v3, 0x2

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "select count(*) from EmojiGroupInfo where type = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/tencent/mm/storage/w;->ggU:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    :try_start_0
    iget-object v2, p0, Lcom/tencent/mm/storage/x;->crf:Lcom/tencent/mm/sdk/e/af;

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Lcom/tencent/mm/sdk/e/af;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 204
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 205
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    add-int/lit8 v0, v0, 0x2

    .line 206
    :try_start_2
    const-string v1, "MicroMsg.EmojiGroupInfoStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TYPE_DOWNLOAD COUNT:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 210
    if-eqz v2, :cond_0

    .line 211
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 214
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/tencent/mm/storage/x;->gha:Z

    if-eqz v1, :cond_1

    .line 215
    add-int/lit8 v0, v0, 0x1

    .line 217
    :cond_1
    iget-boolean v1, p0, Lcom/tencent/mm/storage/x;->ghb:Z

    if-eqz v1, :cond_2

    .line 218
    add-int/lit8 v0, v0, 0x1

    .line 220
    :cond_2
    return v0

    .line 207
    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move v0, v3

    .line 208
    :goto_1
    :try_start_3
    const-string v3, "MicroMsg.EmojiGroupInfoStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "count all group fail."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 210
    if-eqz v2, :cond_0

    .line 211
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 210
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_3

    .line 211
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 210
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 207
    :catch_1
    move-exception v0

    move-object v1, v0

    move v0, v3

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public static aBu()Z
    .locals 3

    .prologue
    .line 746
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v1, 0x33010

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/e;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 747
    return v0
.end method

.method private bL(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 12
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 106
    .line 107
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 108
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 110
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "custom_emoji/manifest.xml"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 113
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 114
    invoke-virtual {v2, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 115
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    .line 116
    const-string v4, "catalog"

    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    move v2, v0

    .line 118
    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_8

    .line 120
    new-instance v5, Lcom/tencent/mm/storage/w;

    invoke-direct {v5}, Lcom/tencent/mm/storage/w;-><init>()V

    .line 121
    invoke-interface {v4, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 122
    const-string v6, "id"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 123
    const-string v7, "sort"

    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 124
    const-string v7, "MicroMsg.EmojiGroupInfoStorage"

    const-string v8, "Set Sort id:%d,sort:%d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "sort"

    invoke-interface {v0, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    sget v7, Lcom/tencent/mm/storage/w;->ggX:I

    and-int/2addr v7, v6

    sget v8, Lcom/tencent/mm/storage/w;->ggX:I

    if-ne v7, v8, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "select  count(*) from EmojiInfo where catalog="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v8, Lcom/tencent/mm/storage/w;->ggY:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/tencent/mm/storage/x;->crf:Lcom/tencent/mm/sdk/e/af;

    const/4 v9, 0x0

    invoke-interface {v8, v7, v9}, Lcom/tencent/mm/sdk/e/af;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    if-gtz v8, :cond_0

    invoke-static {}, Lcom/tencent/mm/storage/x;->aBu()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 128
    :cond_0
    const/4 v7, -0x1

    invoke-virtual {v5, v7}, Lcom/tencent/mm/storage/w;->lY(I)V

    .line 129
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v7

    const v8, 0x33010

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 130
    const-string v7, "MicroMsg.EmojiGroupInfoStorage"

    const-string v8, "moveCustomEmojiTabToSecond"

    invoke-static {v7, v8}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_1
    :goto_1
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tencent/mm/storage/w;->un(Ljava/lang/String;)V

    .line 137
    const-string v6, "name"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tencent/mm/storage/w;->gg(Ljava/lang/String;)V

    .line 138
    const-string v6, "type"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 139
    const-string v6, "type"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/tencent/mm/storage/w;->setType(I)V

    .line 141
    :cond_2
    const-string v6, "free"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 142
    const-string v6, "type"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/tencent/mm/storage/w;->lV(I)V

    .line 145
    :cond_3
    invoke-virtual {v5}, Lcom/tencent/mm/storage/w;->getType()I

    move-result v0

    sget v6, Lcom/tencent/mm/storage/w;->ggT:I

    if-eq v0, v6, :cond_4

    invoke-virtual {v5}, Lcom/tencent/mm/storage/w;->getType()I

    move-result v0

    sget v6, Lcom/tencent/mm/storage/w;->TYPE_CUSTOM:I

    if-ne v0, v6, :cond_5

    .line 146
    :cond_4
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 133
    :cond_6
    invoke-direct {p0}, Lcom/tencent/mm/storage/x;->aBo()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v7}, Lcom/tencent/mm/storage/w;->lY(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 157
    :catch_0
    move-exception v0

    .line 158
    :try_start_1
    const-string v2, "MicroMsg.EmojiGroupInfoStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "init emoji group db error."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    if-eqz v1, :cond_7

    .line 166
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 172
    :cond_7
    :goto_2
    return-object v3

    .line 150
    :cond_8
    :try_start_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 151
    invoke-virtual {p0, v3}, Lcom/tencent/mm/storage/x;->aw(Ljava/util/List;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 165
    :cond_9
    if-eqz v1, :cond_7

    .line 166
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 169
    :catch_1
    move-exception v0

    goto :goto_2

    .line 160
    :catch_2
    move-exception v0

    .line 161
    :try_start_5
    const-string v2, "MicroMsg.EmojiGroupInfoStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "parse xml error; "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 165
    if-eqz v1, :cond_7

    .line 166
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 169
    :catch_3
    move-exception v0

    goto :goto_2

    .line 164
    :catchall_0
    move-exception v0

    .line 165
    if-eqz v1, :cond_a

    .line 166
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 169
    :cond_a
    :goto_3
    throw v0

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_3
.end method


# virtual methods
.method public final C(Ljava/util/ArrayList;)V
    .locals 10
    .parameter

    .prologue
    .line 654
    const/4 v2, 0x0

    .line 655
    const-wide/16 v0, -0x1

    .line 656
    iget-object v3, p0, Lcom/tencent/mm/storage/x;->crf:Lcom/tencent/mm/sdk/e/af;

    instance-of v3, v3, Lcom/tencent/mm/ap/i;

    if-eqz v3, :cond_2

    .line 657
    iget-object v0, p0, Lcom/tencent/mm/storage/x;->crf:Lcom/tencent/mm/sdk/e/af;

    check-cast v0, Lcom/tencent/mm/ap/i;

    .line 658
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ap/i;->ca(J)J

    move-result-wide v1

    .line 659
    const-string v3, "MicroMsg.EmojiGroupInfoStorage"

    const-string v4, "surround deleteByGroupIdList in a transaction, ticket = %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v3, v0

    .line 662
    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 663
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 664
    invoke-virtual {p0, v0}, Lcom/tencent/mm/storage/x;->uv(Ljava/lang/String;)Z

    goto :goto_1

    .line 667
    :cond_0
    if-eqz v3, :cond_1

    .line 668
    invoke-virtual {v3, v1, v2}, Lcom/tencent/mm/ap/i;->cb(J)I

    .line 669
    const-string v0, "MicroMsg.EmojiGroupInfoStorage"

    const-string v1, "end deleteByGroupIdList transaction"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    :cond_1
    return-void

    :cond_2
    move-object v3, v2

    move-wide v8, v0

    move-wide v1, v8

    goto :goto_0
.end method

.method public final L(Ljava/lang/String;Z)Lcom/tencent/mm/storage/w;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 247
    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "select * from EmojiGroupInfo where productID=\'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    :try_start_0
    iget-object v2, p0, Lcom/tencent/mm/storage/x;->crf:Lcom/tencent/mm/sdk/e/af;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/tencent/mm/sdk/e/af;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 252
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 253
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 254
    new-instance v0, Lcom/tencent/mm/storage/w;

    invoke-direct {v0}, Lcom/tencent/mm/storage/w;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 255
    :try_start_2
    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/w;->convertFrom(Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 261
    if-eqz v3, :cond_0

    .line 262
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 271
    :cond_0
    :goto_0
    return-object v0

    .line 261
    :cond_1
    if-eqz v3, :cond_5

    .line 262
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 264
    :goto_1
    if-nez v0, :cond_0

    .line 265
    if-eqz p2, :cond_3

    move-object v0, v1

    .line 266
    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 259
    :goto_2
    :try_start_3
    const-string v4, "MicroMsg.EmojiGroupInfoStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "get getEmojiGroupInof fail. product id is"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 261
    if-eqz v2, :cond_4

    .line 262
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object v0, v3

    goto :goto_1

    .line 261
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_2

    .line 262
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 268
    :cond_3
    new-instance v0, Lcom/tencent/mm/storage/w;

    invoke-direct {v0}, Lcom/tencent/mm/storage/w;-><init>()V

    goto :goto_0

    .line 261
    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    .line 258
    :catch_1
    move-exception v0

    move-object v2, v3

    move-object v3, v1

    goto :goto_2

    :catch_2
    move-exception v2

    move-object v7, v2

    move-object v2, v3

    move-object v3, v0

    move-object v0, v7

    goto :goto_2

    :cond_4
    move-object v0, v3

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method public final a(Lcom/tencent/mm/ap/g;)I
    .locals 1
    .parameter

    .prologue
    .line 62
    if-eqz p1, :cond_0

    .line 63
    iput-object p1, p0, Lcom/tencent/mm/storage/x;->crf:Lcom/tencent/mm/sdk/e/af;

    .line 65
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final aBp()Ljava/util/List;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 300
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "select * from EmojiGroupInfo where type="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/tencent/mm/storage/w;->ggT:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " or type="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Lcom/tencent/mm/storage/w;->TYPE_CUSTOM:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " order by sort ASC"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 305
    :try_start_0
    iget-object v3, p0, Lcom/tencent/mm/storage/x;->crf:Lcom/tencent/mm/sdk/e/af;

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Lcom/tencent/mm/sdk/e/af;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 306
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 307
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 310
    :cond_0
    new-instance v0, Lcom/tencent/mm/storage/w;

    invoke-direct {v0}, Lcom/tencent/mm/storage/w;-><init>()V

    .line 311
    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/w;->convertFrom(Landroid/database/Cursor;)V

    .line 312
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 318
    :cond_1
    if-eqz v1, :cond_2

    .line 319
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 321
    :cond_2
    :goto_0
    return-object v2

    .line 315
    :catch_0
    move-exception v0

    .line 316
    :try_start_1
    const-string v3, "MicroMsg.EmojiGroupInfoStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "get system group fail."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    if-eqz v1, :cond_2

    .line 319
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 318
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 319
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public final aBq()Ljava/util/List;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 330
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "select * from EmojiGroupInfo where type="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/tencent/mm/storage/w;->ggT:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " or type="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Lcom/tencent/mm/storage/w;->TYPE_CUSTOM:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " or type="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Lcom/tencent/mm/storage/w;->ggU:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " order by sort ASC,lastUseTime DESC"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 335
    :try_start_0
    iget-object v3, p0, Lcom/tencent/mm/storage/x;->crf:Lcom/tencent/mm/sdk/e/af;

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Lcom/tencent/mm/sdk/e/af;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 336
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 337
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 340
    :cond_0
    new-instance v0, Lcom/tencent/mm/storage/w;

    invoke-direct {v0}, Lcom/tencent/mm/storage/w;-><init>()V

    .line 341
    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/w;->convertFrom(Landroid/database/Cursor;)V

    .line 342
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 349
    :cond_1
    if-eqz v1, :cond_2

    .line 350
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 352
    :cond_2
    :goto_0
    return-object v2

    .line 346
    :catch_0
    move-exception v0

    .line 347
    :try_start_1
    const-string v3, "MicroMsg.EmojiGroupInfoStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "get all group fail."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 349
    if-eqz v1, :cond_2

    .line 350
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 349
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 350
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public final aBr()Ljava/util/ArrayList;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 437
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "select * from EmojiGroupInfo where type="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/tencent/mm/storage/w;->ggU:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " or type="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Lcom/tencent/mm/storage/w;->ggT:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " order by sort ASC,lastUseTime DESC"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 448
    :try_start_0
    iget-object v3, p0, Lcom/tencent/mm/storage/x;->crf:Lcom/tencent/mm/sdk/e/af;

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Lcom/tencent/mm/sdk/e/af;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 449
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 450
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 453
    :cond_0
    new-instance v0, Lcom/tencent/mm/storage/w;

    invoke-direct {v0}, Lcom/tencent/mm/storage/w;-><init>()V

    .line 454
    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/w;->convertFrom(Landroid/database/Cursor;)V

    .line 455
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 462
    :cond_1
    if-eqz v1, :cond_2

    .line 463
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 465
    :cond_2
    :goto_0
    return-object v2

    .line 459
    :catch_0
    move-exception v0

    .line 460
    :try_start_1
    const-string v3, "MicroMsg.EmojiGroupInfoStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "get Panel EmojiGroupInfo."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 462
    if-eqz v1, :cond_2

    .line 463
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 462
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 463
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public final aBs()Ljava/util/HashMap;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 474
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "select * from EmojiGroupInfo where type="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/tencent/mm/storage/w;->ggU:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " order by sort ASC"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 478
    :try_start_0
    iget-object v3, p0, Lcom/tencent/mm/storage/x;->crf:Lcom/tencent/mm/sdk/e/af;

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Lcom/tencent/mm/sdk/e/af;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 479
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 480
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 483
    :cond_0
    new-instance v0, Lcom/tencent/mm/storage/w;

    invoke-direct {v0}, Lcom/tencent/mm/storage/w;-><init>()V

    .line 484
    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/w;->convertFrom(Landroid/database/Cursor;)V

    .line 485
    invoke-virtual {v0}, Lcom/tencent/mm/storage/w;->aBb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 492
    :cond_1
    if-eqz v1, :cond_2

    .line 493
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 495
    :cond_2
    :goto_0
    return-object v2

    .line 489
    :catch_0
    move-exception v0

    .line 490
    :try_start_1
    const-string v3, "MicroMsg.EmojiGroupInfoStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "get Panel EmojiGroupInfo."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 492
    if-eqz v1, :cond_2

    .line 493
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 492
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 493
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public final aBt()Ljava/util/HashMap;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 504
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "select * from EmojiGroupInfo where type="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/tencent/mm/storage/w;->ggU:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " and status =7 order by sort ASC"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 509
    :try_start_0
    iget-object v3, p0, Lcom/tencent/mm/storage/x;->crf:Lcom/tencent/mm/sdk/e/af;

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Lcom/tencent/mm/sdk/e/af;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 510
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 511
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 512
    new-instance v0, Lcom/tencent/mm/storage/v;

    invoke-direct {v0}, Lcom/tencent/mm/storage/v;-><init>()V

    .line 514
    :cond_0
    const-string v3, "productID"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 515
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 516
    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/v;->jn(Ljava/lang/String;)V

    .line 517
    const-string v4, "packName"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 518
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 519
    invoke-virtual {v0, v4}, Lcom/tencent/mm/storage/v;->ul(Ljava/lang/String;)V

    .line 520
    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Lcom/tencent/mm/storage/v;->lR(I)V

    .line 521
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 528
    :cond_1
    if-eqz v1, :cond_2

    .line 529
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 531
    :cond_2
    :goto_0
    return-object v2

    .line 525
    :catch_0
    move-exception v0

    .line 526
    :try_start_1
    const-string v3, "MicroMsg.EmojiGroupInfoStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "get download group map failed."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 528
    if-eqz v1, :cond_2

    .line 529
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 528
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 529
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public final aBv()V
    .locals 4

    .prologue
    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/tencent/mm/storage/w;->TYPE_CUSTOM:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UPDATE EmojiGroupInfo SET sort=-1,lastUseTime="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/storage/x;->crf:Lcom/tencent/mm/sdk/e/af;

    const-string v2, "EmojiGroupInfo"

    invoke-interface {v1, v2, v0}, Lcom/tencent/mm/sdk/e/af;->aQ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "event_update_group"

    invoke-virtual {p0, v0}, Lcom/tencent/mm/storage/x;->th(Ljava/lang/String;)V

    .line 753
    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v1, 0x33010

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 754
    return-void
.end method

.method public final aBw()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "select * from EmojiGroupInfo where type=\'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/tencent/mm/storage/w;->ggT:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 771
    :try_start_0
    iget-object v2, p0, Lcom/tencent/mm/storage/x;->crf:Lcom/tencent/mm/sdk/e/af;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/tencent/mm/sdk/e/af;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 772
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_1

    .line 773
    if-eqz v1, :cond_0

    .line 779
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 v0, 0x1

    .line 782
    :goto_0
    return v0

    .line 778
    :cond_1
    if-eqz v1, :cond_2

    .line 779
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 782
    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 775
    :catch_0
    move-exception v0

    .line 776
    :try_start_1
    const-string v2, "MicroMsg.EmojiGroupInfoStorage"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 778
    if-eqz v1, :cond_2

    .line 779
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 778
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 779
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public final aw(Ljava/util/List;)Z
    .locals 11
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 541
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 542
    :cond_0
    const-string v0, "MicroMsg.EmojiGroupInfoStorage"

    const-string v1, "updateList . list is null."

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    :goto_0
    return v4

    .line 546
    :cond_1
    const/4 v2, 0x0

    .line 547
    const-wide/16 v0, -0x1

    .line 548
    iget-object v3, p0, Lcom/tencent/mm/storage/x;->crf:Lcom/tencent/mm/sdk/e/af;

    instance-of v3, v3, Lcom/tencent/mm/ap/i;

    if-eqz v3, :cond_4

    .line 549
    iget-object v0, p0, Lcom/tencent/mm/storage/x;->crf:Lcom/tencent/mm/sdk/e/af;

    check-cast v0, Lcom/tencent/mm/ap/i;

    .line 550
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ap/i;->ca(J)J

    move-result-wide v1

    .line 551
    const-string v3, "MicroMsg.EmojiGroupInfoStorage"

    const-string v6, "surround updateList in a transaction, ticket = %d"

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v3, v6, v7}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v3, v0

    .line 554
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_2

    .line 555
    iget-object v6, p0, Lcom/tencent/mm/storage/x;->crf:Lcom/tencent/mm/sdk/e/af;

    const-string v7, "EmojiGroupInfo"

    const-string v8, "productID"

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/w;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/w;->oa()Landroid/content/ContentValues;

    move-result-object v0

    invoke-interface {v6, v7, v8, v0}, Lcom/tencent/mm/sdk/e/af;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 554
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 558
    :cond_2
    if-eqz v3, :cond_3

    .line 559
    invoke-virtual {v3, v1, v2}, Lcom/tencent/mm/ap/i;->cb(J)I

    .line 560
    const-string v0, "MicroMsg.EmojiGroupInfoStorage"

    const-string v1, "end updateList transaction"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    :cond_3
    const-string v0, "event_update_group"

    invoke-virtual {p0, v0}, Lcom/tencent/mm/storage/x;->th(Ljava/lang/String;)V

    move v4, v5

    .line 564
    goto :goto_0

    :cond_4
    move-object v3, v2

    move-wide v9, v0

    move-wide v1, v9

    goto :goto_1
.end method

.method public final ax(Ljava/util/List;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 583
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 584
    :cond_0
    const-string v0, "MicroMsg.EmojiGroupInfoStorage"

    const-string v1, "updateEmojiGroupByEmotionSummary empty summary."

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    :goto_0
    return v2

    :cond_1
    move v1, v2

    .line 589
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 590
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/fb;

    .line 591
    iget-object v4, v0, Lcom/tencent/mm/protocal/a/fb;->fFB:Ljava/lang/String;

    invoke-virtual {p0, v4, v2}, Lcom/tencent/mm/storage/x;->L(Ljava/lang/String;Z)Lcom/tencent/mm/storage/w;

    move-result-object v4

    .line 592
    iget-object v5, v0, Lcom/tencent/mm/protocal/a/fb;->fFB:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/tencent/mm/storage/w;->un(Ljava/lang/String;)V

    .line 593
    iget-object v5, v0, Lcom/tencent/mm/protocal/a/fb;->dGT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/tencent/mm/storage/w;->uo(Ljava/lang/String;)V

    .line 594
    iget-object v5, v0, Lcom/tencent/mm/protocal/a/fb;->fFP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/tencent/mm/storage/w;->up(Ljava/lang/String;)V

    .line 595
    iget-object v5, v0, Lcom/tencent/mm/protocal/a/fb;->fFK:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/tencent/mm/storage/w;->uq(Ljava/lang/String;)V

    .line 596
    iget-object v5, v0, Lcom/tencent/mm/protocal/a/fb;->fFC:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/tencent/mm/storage/w;->gg(Ljava/lang/String;)V

    .line 597
    iget-object v5, v0, Lcom/tencent/mm/protocal/a/fb;->fFD:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/tencent/mm/storage/w;->ur(Ljava/lang/String;)V

    .line 598
    iget-object v5, v0, Lcom/tencent/mm/protocal/a/fb;->fFE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/tencent/mm/storage/w;->us(Ljava/lang/String;)V

    .line 599
    iget-object v5, v0, Lcom/tencent/mm/protocal/a/fb;->fFF:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/tencent/mm/storage/w;->ut(Ljava/lang/String;)V

    .line 600
    iget v5, v0, Lcom/tencent/mm/protocal/a/fb;->fFG:I

    invoke-virtual {v4, v5}, Lcom/tencent/mm/storage/w;->lV(I)V

    .line 601
    iget v5, v0, Lcom/tencent/mm/protocal/a/fb;->fFH:I

    invoke-virtual {v4, v5}, Lcom/tencent/mm/storage/w;->lW(I)V

    .line 602
    iget v5, v0, Lcom/tencent/mm/protocal/a/fb;->fFL:I

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/tencent/mm/storage/w;->bR(J)V

    .line 603
    iget v0, v0, Lcom/tencent/mm/protocal/a/fb;->fFX:I

    invoke-virtual {v4, v0}, Lcom/tencent/mm/storage/w;->lX(I)V

    .line 604
    sget v0, Lcom/tencent/mm/storage/w;->ggU:I

    invoke-virtual {v4, v0}, Lcom/tencent/mm/storage/w;->setType(I)V

    .line 605
    invoke-virtual {v4}, Lcom/tencent/mm/storage/w;->aBm()I

    move-result v0

    if-nez v0, :cond_2

    .line 606
    invoke-virtual {v4, v3}, Lcom/tencent/mm/storage/w;->lY(I)V

    .line 608
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/storage/x;->crf:Lcom/tencent/mm/sdk/e/af;

    const-string v5, "EmojiGroupInfo"

    const-string v6, "productID"

    invoke-virtual {v4}, Lcom/tencent/mm/storage/w;->oa()Landroid/content/ContentValues;

    move-result-object v4

    invoke-interface {v0, v5, v6, v4}, Lcom/tencent/mm/sdk/e/af;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 589
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 610
    :cond_3
    const-string v0, "event_update_group"

    invoke-virtual {p0, v0}, Lcom/tencent/mm/storage/x;->th(Ljava/lang/String;)V

    move v2, v3

    .line 611
    goto :goto_0
.end method

.method public final synthetic b(Lcom/tencent/mm/sdk/e/ad;)Z
    .locals 1
    .parameter

    .prologue
    .line 34
    check-cast p1, Lcom/tencent/mm/storage/w;

    invoke-virtual {p0, p1}, Lcom/tencent/mm/storage/x;->e(Lcom/tencent/mm/storage/w;)Z

    move-result v0

    return v0
.end method

.method public final bK(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 90
    const-string v0, "MicroMsg.EmojiGroupInfoStorage"

    const-string v1, "init start."

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-direct {p0, p1}, Lcom/tencent/mm/storage/x;->bL(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 94
    const-string v0, "MicroMsg.EmojiGroupInfoStorage"

    const-string v1, "init end."

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method public final e(Lcom/tencent/mm/storage/w;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 70
    if-nez p1, :cond_1

    .line 71
    const-string v1, "MicroMsg.EmojiGroupInfoStorage"

    const-string v2, "insert assertion!,invalid emojigroup info."

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->aM(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_0
    :goto_0
    return v0

    .line 74
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/mm/storage/w;->oa()Landroid/content/ContentValues;

    move-result-object v1

    .line 75
    iget-object v2, p0, Lcom/tencent/mm/storage/x;->crf:Lcom/tencent/mm/sdk/e/af;

    const-string v3, "EmojiGroupInfo"

    const-string v4, "productID"

    invoke-interface {v2, v3, v4, v1}, Lcom/tencent/mm/sdk/e/af;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 76
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_2

    .line 77
    const-string v3, "event_update_group"

    invoke-virtual {p0, v3}, Lcom/tencent/mm/storage/x;->th(Ljava/lang/String;)V

    .line 80
    :cond_2
    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final f(Lcom/tencent/mm/storage/w;)Z
    .locals 4
    .parameter

    .prologue
    .line 568
    if-eqz p1, :cond_0

    .line 569
    iget-object v0, p0, Lcom/tencent/mm/storage/x;->crf:Lcom/tencent/mm/sdk/e/af;

    const-string v1, "EmojiGroupInfo"

    const-string v2, "productID"

    invoke-virtual {p1}, Lcom/tencent/mm/storage/w;->oa()Landroid/content/ContentValues;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/mm/sdk/e/af;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 570
    const-string v0, "event_update_group"

    invoke-virtual {p0, v0}, Lcom/tencent/mm/storage/x;->th(Ljava/lang/String;)V

    .line 571
    const/4 v0, 0x1

    .line 573
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final uu(Ljava/lang/String;)Lcom/tencent/mm/storage/w;
    .locals 1
    .parameter

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/mm/storage/x;->L(Ljava/lang/String;Z)Lcom/tencent/mm/storage/w;

    move-result-object v0

    return-object v0
.end method

.method public final uv(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 637
    .line 638
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 639
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "productID = \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 641
    :try_start_0
    iget-object v2, p0, Lcom/tencent/mm/storage/x;->crf:Lcom/tencent/mm/sdk/e/af;

    const-string v3, "EmojiGroupInfo"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v4}, Lcom/tencent/mm/sdk/e/af;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    .line 646
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 647
    const-string v1, "event_update_group"

    invoke-virtual {p0, v1}, Lcom/tencent/mm/storage/x;->th(Ljava/lang/String;)V

    .line 648
    const-string v1, "delete_group"

    invoke-virtual {p0, v1}, Lcom/tencent/mm/storage/x;->th(Ljava/lang/String;)V

    .line 650
    :cond_1
    return v0

    .line 642
    :catch_0
    move-exception v1

    .line 643
    const-string v2, "MicroMsg.EmojiGroupInfoStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Delete By ProductId fail."

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

.method public final uw(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 700
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 701
    const-string v1, "MicroMsg.EmojiGroupInfoStorage"

    const-string v3, "product id is null."

    invoke-static {v1, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "select count(*) from EmojiGroupInfo where productID = \'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' AND status=\'7\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 707
    :try_start_0
    iget-object v3, p0, Lcom/tencent/mm/storage/x;->crf:Lcom/tencent/mm/sdk/e/af;

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Lcom/tencent/mm/sdk/e/af;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 708
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 709
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    .line 713
    :cond_1
    if-eqz v2, :cond_2

    .line 714
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 717
    :cond_2
    :goto_0
    return v0

    .line 710
    :catch_0
    move-exception v1

    .line 711
    :try_start_1
    const-string v3, "MicroMsg.EmojiGroupInfoStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Check GroupId Exist Faild."

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

    .line 713
    if-eqz v2, :cond_2

    .line 714
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 713
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_3

    .line 714
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public final zz()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "EmojiGroupInfo"

    return-object v0
.end method
