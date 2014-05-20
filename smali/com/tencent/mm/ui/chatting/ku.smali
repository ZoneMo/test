.class public final Lcom/tencent/mm/ui/chatting/ku;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private context:Landroid/content/Context;

.field private eSm:Lcom/tencent/mm/storage/i;

.field private gMg:Ljava/util/List;

.field private gQY:Ljava/lang/String;

.field private gQZ:Ljava/text/SimpleDateFormat;

.field private gRa:Ljava/lang/String;

.field private gRb:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/tencent/mm/storage/i;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v2, p0, Lcom/tencent/mm/ui/chatting/ku;->gQY:Ljava/lang/String;

    .line 39
    iput-object v2, p0, Lcom/tencent/mm/ui/chatting/ku;->eSm:Lcom/tencent/mm/storage/i;

    .line 40
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ku;->gQZ:Ljava/text/SimpleDateFormat;

    .line 42
    iput-object v2, p0, Lcom/tencent/mm/ui/chatting/ku;->gRa:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ku;->gRb:Ljava/util/ArrayList;

    .line 46
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ku;->context:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/tencent/mm/ui/chatting/ku;->gMg:Ljava/util/List;

    .line 48
    iput-object p3, p0, Lcom/tencent/mm/ui/chatting/ku;->eSm:Lcom/tencent/mm/storage/i;

    .line 49
    return-void
.end method

.method private R(Lcom/tencent/mm/storage/ak;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 216
    const/4 v0, 0x0

    .line 217
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ku;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    const-string v2, "@chatroom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 218
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-static {v0}, Lcom/tencent/mm/model/w;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 229
    const-string v0, "MicroMsg.OtherMailHistoryExporter"

    const-string v1, "isSend"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-static {}, Lcom/tencent/mm/model/v;->tj()Ljava/lang/String;

    move-result-object v0

    .line 234
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->DL()J

    move-result-wide v1

    .line 235
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "HH:mm"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    const-string v0, "  "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 221
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v1

    .line 222
    invoke-static {v1}, Lcom/tencent/mm/model/bv;->dw(Ljava/lang/String;)I

    move-result v2

    .line 223
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 224
    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-static {v0}, Lcom/tencent/mm/model/w;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private aKh()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 103
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ku;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@chatroom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ku;->context:Landroid/content/Context;

    const v1, 0x7f070221

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ku;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/i;->rq()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 121
    :goto_0
    return-object v0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ku;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->kn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ku;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/r;->cg(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 110
    const-string v0, ""

    .line 111
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
    invoke-static {v0}, Lcom/tencent/mm/model/w;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 114
    goto :goto_1

    .line 115
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 119
    :goto_2
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ku;->context:Landroid/content/Context;

    const v2, 0x7f070222

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ku;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rq()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private ch(J)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 246
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ku;->gQZ:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 247
    return-object v0
.end method


# virtual methods
.method public final aKf()Ljava/util/ArrayList;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 52
    const-string v3, "MicroMsg.OtherMailHistoryExporter"

    const-string v4, "get image attach: history is null? %B, selectItems.size = %d"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ku;->gRa:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v2

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ku;->gMg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ku;->gRa:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ku;->gRb:Ljava/util/ArrayList;

    .line 58
    :goto_1
    return-object v0

    :cond_0
    move v0, v2

    .line 52
    goto :goto_0

    .line 56
    :cond_1
    const-string v0, "MicroMsg.OtherMailHistoryExporter"

    const-string v1, "had not exported, do export first"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ku;->aKg()Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ku;->gRb:Ljava/util/ArrayList;

    goto :goto_1
.end method

.method public final aKg()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v11, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 62
    const-string v4, "MicroMsg.OtherMailHistoryExporter"

    const-string v5, "export: history is null? %B, selectItems.size = %d"

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ku;->gRa:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v6, v2

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ku;->gMg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-static {v4, v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ku;->gRa:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ku;->gRa:Ljava/lang/String;

    .line 99
    :goto_1
    return-object v0

    :cond_0
    move v0, v2

    .line 62
    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ku;->gRb:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ku;->aKh()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v0, "\n\n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ku;->gMg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/ak;

    .line 72
    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/ku;->gQY:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 73
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->DL()J

    move-result-wide v7

    invoke-direct {p0, v7, v8}, Lcom/tencent/mm/ui/chatting/ku;->ch(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/mm/ui/chatting/ku;->gQY:Ljava/lang/String;

    .line 74
    const-string v4, "\u2014\u2014\u2014\u2014\u2014  %s  \u2014\u2014\u2014\u2014\u2014\n\n"

    new-array v7, v1, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/tencent/mm/ui/chatting/ku;->gQY:Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v4, "\n"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :cond_2
    :goto_3
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aCc()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 86
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aCc()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v4

    if-ne v4, v1, :cond_4

    const-string v4, "%s\n\n%s\n\n"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/chatting/ku;->R(Lcom/tencent/mm/storage/ak;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v1

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 77
    :cond_3
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->DL()J

    move-result-wide v7

    invoke-direct {p0, v7, v8}, Lcom/tencent/mm/ui/chatting/ku;->ch(J)Ljava/lang/String;

    move-result-object v4

    .line 78
    iget-object v7, p0, Lcom/tencent/mm/ui/chatting/ku;->gQY:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 79
    iput-object v4, p0, Lcom/tencent/mm/ui/chatting/ku;->gQY:Ljava/lang/String;

    .line 80
    const-string v4, "\u2014\u2014\u2014\u2014\u2014  %s  \u2014\u2014\u2014\u2014\u2014\n\n"

    new-array v7, v1, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/tencent/mm/ui/chatting/ku;->gQY:Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string v4, "\n"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 86
    :cond_4
    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/ku;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v4}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v4

    const-string v7, "@chatroom"

    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "%s\n\n%s\n\n"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/chatting/ku;->R(Lcom/tencent/mm/storage/ak;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v1

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/model/bv;->dw(Ljava/lang/String;)I

    move-result v4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_16

    const-string v7, "%s\n\n%s\n\n"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/chatting/ku;->R(Lcom/tencent/mm/storage/ak;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v1

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_6
    move-object v0, v3

    goto :goto_4

    .line 87
    :cond_7
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aBY()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 89
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aBY()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v7

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->AH()I

    move-result v4

    int-to-long v9, v4

    long-to-int v4, v7

    invoke-static {v4}, Lcom/tencent/mm/ui/chatting/kh;->nG(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    long-to-int v4, v9

    invoke-static {v4}, Lcom/tencent/mm/ui/chatting/kh;->nH(I)Ljava/lang/String;

    move-result-object v4

    :cond_8
    const-string v7, "MicroMsg.OtherMailHistoryExporter"

    const-string v8, "hdPath[%s]"

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v4, v9, v2

    invoke-static {v7, v8, v9}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v4}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "file://"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/tencent/mm/ui/chatting/ku;->gRb:Ljava/util/ArrayList;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "[%s(%s):%s]"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/tencent/mm/ui/chatting/ku;->context:Landroid/content/Context;

    const v10, 0x7f070217

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v1

    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/ku;->context:Landroid/content/Context;

    const v9, 0x7f07021a

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "%s\n\n%s\n\n"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/chatting/ku;->R(Lcom/tencent/mm/storage/ak;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v2

    aput-object v4, v8, v1

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_9
    move-object v0, v3

    goto :goto_5

    .line 92
    :cond_a
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aBV()Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "[%s]"

    new-array v7, v1, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/tencent/mm/ui/chatting/ku;->context:Landroid/content/Context;

    const v9, 0x7f070210

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_6
    const-string v7, "MicroMsg.OtherMailHistoryExporter"

    const-string v8, "formatOtherMsg, msgStr = %s"

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v4, v9, v2

    invoke-static {v7, v8, v9}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v7, "%s\n\n%s\n\n"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/chatting/ku;->R(Lcom/tencent/mm/storage/ak;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v2

    aput-object v4, v8, v1

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_b
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aBX()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v4

    if-ne v4, v1, :cond_c

    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/ku;->context:Landroid/content/Context;

    const v7, 0x7f070211

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_c
    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/ku;->context:Landroid/content/Context;

    const v7, 0x7f070212

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_d
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aCb()Z

    move-result v4

    if-eqz v4, :cond_e

    new-instance v4, Lcom/tencent/mm/c/a/dd;

    invoke-direct {v4}, Lcom/tencent/mm/c/a/dd;-><init>()V

    iget-object v7, v4, Lcom/tencent/mm/c/a/dd;->bOg:Lcom/tencent/mm/c/a/de;

    iput v1, v7, Lcom/tencent/mm/c/a/de;->bOi:I

    iget-object v7, v4, Lcom/tencent/mm/c/a/dd;->bOg:Lcom/tencent/mm/c/a/de;

    iput-object v0, v7, Lcom/tencent/mm/c/a/de;->bLP:Lcom/tencent/mm/storage/ak;

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v7

    invoke-interface {v7, v4}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    iget-object v4, v4, Lcom/tencent/mm/c/a/dd;->bOh:Lcom/tencent/mm/c/a/df;

    iget-object v4, v4, Lcom/tencent/mm/c/a/df;->bOl:Ljava/lang/String;

    const-string v7, "[%s]"

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v4, v8, v2

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_e
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aBT()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/sdk/platformtools/cj;->sT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/j/b;->bR(Ljava/lang/String;)Lcom/tencent/mm/j/b;

    move-result-object v4

    iget-object v4, v4, Lcom/tencent/mm/j/b;->appId:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/tencent/mm/pluginsdk/model/app/l;->F(Ljava/lang/String;Z)Lcom/tencent/mm/pluginsdk/model/app/k;

    move-result-object v4

    if-nez v4, :cond_f

    const-string v4, ""

    goto/16 :goto_6

    :cond_f
    iget-object v4, v4, Lcom/tencent/mm/pluginsdk/model/app/k;->field_appName:Ljava/lang/String;

    const-string v7, "[%s: %s]"

    new-array v8, v11, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/tencent/mm/ui/chatting/ku;->context:Landroid/content/Context;

    const v10, 0x7f070215

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    aput-object v4, v8, v1

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6

    :cond_10
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aCa()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/tencent/mm/storage/ap;->vj(Ljava/lang/String;)Lcom/tencent/mm/storage/al;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/storage/al;->kn()Ljava/lang/String;

    move-result-object v4

    const-string v7, "[%s: %s]"

    new-array v8, v11, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/tencent/mm/ui/chatting/ku;->context:Landroid/content/Context;

    const v10, 0x7f070213

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    aput-object v4, v8, v1

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6

    :cond_11
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->MP()Z

    move-result v4

    if-eqz v4, :cond_12

    const-string v4, "[%s]"

    new-array v7, v1, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/tencent/mm/ui/chatting/ku;->context:Landroid/content/Context;

    const v9, 0x7f070214

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6

    :cond_12
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aCd()Z

    move-result v4

    if-nez v4, :cond_13

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aCe()Z

    move-result v4

    if-eqz v4, :cond_15

    :cond_13
    const-string v4, "[%s]"

    new-array v7, v1, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/tencent/mm/ui/chatting/ku;->context:Landroid/content/Context;

    const v9, 0x7f070216

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6

    .line 97
    :cond_14
    const-string v0, "\n\n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ku;->gRa:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ku;->gRa:Ljava/lang/String;

    goto/16 :goto_1

    :cond_15
    move-object v4, v3

    goto/16 :goto_6

    :cond_16
    move-object v0, v3

    goto/16 :goto_4
.end method
