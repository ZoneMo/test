.class public final Lcom/tencent/mm/storage/ae;
.super Lcom/tencent/mm/sdk/e/ah;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ap/h;


# static fields
.field public static final cjC:[Ljava/lang/String;


# instance fields
.field private crf:Lcom/tencent/mm/sdk/e/af;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 23
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/tencent/mm/storage/ad;->cfX:Lcom/tencent/mm/sdk/e/ae;

    const-string v3, "EmojiSummaryInfo"

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/e/ah;->a(Lcom/tencent/mm/sdk/e/ae;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/mm/storage/ae;->cjC:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/sdk/e/af;)V
    .locals 2
    .parameter

    .prologue
    .line 32
    sget-object v0, Lcom/tencent/mm/storage/ad;->cfX:Lcom/tencent/mm/sdk/e/ae;

    const-string v1, "EmojiSummaryInfo"

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/mm/storage/ae;-><init>(Lcom/tencent/mm/sdk/e/af;Lcom/tencent/mm/sdk/e/ae;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method private constructor <init>(Lcom/tencent/mm/sdk/e/af;Lcom/tencent/mm/sdk/e/ae;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tencent/mm/sdk/e/ah;-><init>(Lcom/tencent/mm/sdk/e/af;Lcom/tencent/mm/sdk/e/ae;Ljava/lang/String;[Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/tencent/mm/storage/ae;->crf:Lcom/tencent/mm/sdk/e/af;

    .line 40
    return-void
.end method

.method private mh(I)Ljava/util/List;
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 70
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 71
    const-string v3, "type=?"

    .line 73
    iget-object v0, p0, Lcom/tencent/mm/storage/ae;->crf:Lcom/tencent/mm/sdk/e/af;

    const-string v1, "EmojiSummaryInfo"

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

    .line 75
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 76
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 79
    :cond_0
    new-instance v1, Lcom/tencent/mm/storage/ad;

    invoke-direct {v1}, Lcom/tencent/mm/storage/ad;-><init>()V

    .line 80
    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/ad;->convertFrom(Landroid/database/Cursor;)V

    .line 81
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    :cond_1
    if-eqz v0, :cond_2

    .line 86
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 89
    :cond_2
    return-object v7
.end method


# virtual methods
.method public final Le()Ljava/util/List;
    .locals 3

    .prologue
    .line 107
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 109
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/mm/storage/ae;->mh(I)Ljava/util/List;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 111
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/ad;

    .line 112
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ad;->Ld()Lcom/tencent/mm/protocal/a/ev;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    :cond_0
    return-object v1
.end method

.method public final a(Lcom/tencent/mm/ap/g;)I
    .locals 1
    .parameter

    .prologue
    .line 44
    if-eqz p1, :cond_0

    .line 45
    iput-object p1, p0, Lcom/tencent/mm/storage/ae;->crf:Lcom/tencent/mm/sdk/e/af;

    .line 48
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final aBP()Ljava/util/List;
    .locals 3

    .prologue
    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 95
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/tencent/mm/storage/ae;->mh(I)Ljava/util/List;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 98
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/ad;

    .line 99
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ad;->aBO()Lcom/tencent/mm/protocal/a/fb;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    :cond_0
    return-object v1
.end method

.method public final synthetic b(Lcom/tencent/mm/sdk/e/ad;)Z
    .locals 4
    .parameter

    .prologue
    .line 21
    check-cast p1, Lcom/tencent/mm/storage/ad;

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/tencent/mm/storage/ad;->field_productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/tencent/mm/storage/ad;->field_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/storage/ad;->field_productId_type:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tencent/mm/storage/ad;->oa()Landroid/content/ContentValues;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/storage/ae;->crf:Lcom/tencent/mm/sdk/e/af;

    const-string v2, "EmojiSummaryInfo"

    const-string v3, "productId_type"

    invoke-interface {v1, v2, v3, v0}, Lcom/tencent/mm/sdk/e/af;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/tencent/mm/storage/ad;->field_productId_type:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/tencent/mm/storage/ae;->th(Ljava/lang/String;)V

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(Ljava/util/List;Ljava/util/List;)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 127
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 128
    :cond_0
    const/4 v0, 0x0

    .line 159
    :goto_0
    return v0

    .line 133
    :cond_1
    const-wide/16 v0, -0x1

    .line 134
    iget-object v2, p0, Lcom/tencent/mm/storage/ae;->crf:Lcom/tencent/mm/sdk/e/af;

    instance-of v2, v2, Lcom/tencent/mm/ap/i;

    if-eqz v2, :cond_5

    .line 135
    iget-object v0, p0, Lcom/tencent/mm/storage/ae;->crf:Lcom/tencent/mm/sdk/e/af;

    check-cast v0, Lcom/tencent/mm/ap/i;

    .line 136
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ap/i;->ca(J)J

    move-result-wide v1

    move-object v3, v0

    .line 139
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/storage/ae;->crf:Lcom/tencent/mm/sdk/e/af;

    const-string v5, "EmojiSummaryInfo"

    invoke-interface {v0, v5, v4, v4}, Lcom/tencent/mm/sdk/e/af;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 141
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/fb;

    .line 142
    new-instance v5, Lcom/tencent/mm/storage/ad;

    invoke-direct {v5, v0}, Lcom/tencent/mm/storage/ad;-><init>(Lcom/tencent/mm/protocal/a/fb;)V

    .line 143
    invoke-virtual {v5}, Lcom/tencent/mm/storage/ad;->oa()Landroid/content/ContentValues;

    move-result-object v0

    .line 144
    iget-object v5, p0, Lcom/tencent/mm/storage/ae;->crf:Lcom/tencent/mm/sdk/e/af;

    const-string v6, "EmojiSummaryInfo"

    const-string v7, "productId_type"

    invoke-interface {v5, v6, v7, v0}, Lcom/tencent/mm/sdk/e/af;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_2

    .line 147
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/ev;

    .line 148
    new-instance v5, Lcom/tencent/mm/storage/ad;

    invoke-direct {v5, v0}, Lcom/tencent/mm/storage/ad;-><init>(Lcom/tencent/mm/protocal/a/ev;)V

    .line 149
    invoke-virtual {v5}, Lcom/tencent/mm/storage/ad;->oa()Landroid/content/ContentValues;

    move-result-object v0

    .line 150
    iget-object v5, p0, Lcom/tencent/mm/storage/ae;->crf:Lcom/tencent/mm/sdk/e/af;

    const-string v6, "EmojiSummaryInfo"

    const-string v7, "productId_type"

    invoke-interface {v5, v6, v7, v0}, Lcom/tencent/mm/sdk/e/af;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_3

    .line 153
    :cond_3
    if-eqz v3, :cond_4

    .line 154
    invoke-virtual {v3, v1, v2}, Lcom/tencent/mm/ap/i;->cb(J)I

    .line 159
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    move-object v3, v4

    move-wide v8, v0

    move-wide v1, v8

    goto :goto_1
.end method
