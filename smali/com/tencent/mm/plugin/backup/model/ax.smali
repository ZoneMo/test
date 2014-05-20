.class public final Lcom/tencent/mm/plugin/backup/model/ax;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cAN:Lcom/tencent/mm/ai/r;

.field private cDa:Lcom/tencent/mm/modelvoice/br;

.field private cLl:Lcom/tencent/mm/w/g;

.field private cLm:Lcom/tencent/mm/storage/ab;

.field private cLn:Lcom/tencent/mm/ah/s;

.field private cLo:Lcom/tencent/mm/t/b;

.field private cLp:Lcom/tencent/mm/m/w;

.field private cLq:Lcom/tencent/mm/modelstat/j;

.field private cLr:Lcom/tencent/mm/modelfriend/af;

.field private cLs:Lcom/tencent/mm/ab/l;

.field private cLt:Lcom/tencent/mm/pluginsdk/as;

.field private cLu:Lcom/tencent/mm/pluginsdk/model/app/r;

.field private cLv:Lcom/tencent/mm/pluginsdk/model/app/o;

.field private cLw:Lcom/tencent/mm/pluginsdk/model/app/b;

.field private chB:Ljava/lang/String;

.field private chC:Ljava/lang/String;

.field private chl:Lcom/tencent/mm/storage/e;

.field private chm:Lcom/tencent/mm/storage/k;

.field private cho:Lcom/tencent/mm/storage/ap;

.field private chp:Lcom/tencent/mm/storage/o;

.field private chq:Lcom/tencent/mm/storage/au;

.field private chr:Lcom/tencent/mm/storage/cc;

.field private chs:Lcom/tencent/mm/storage/c;

.field private cht:Lcom/tencent/mm/storage/cd;

.field private chw:Lcom/tencent/mm/ap/i;

.field private chy:Lcom/tencent/mm/ap/g;

.field private coo:Lcom/tencent/mm/p/k;

.field private cwb:Lcom/tencent/mm/ab/b;

.field private uin:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chw:Lcom/tencent/mm/ap/i;

    .line 105
    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chy:Lcom/tencent/mm/ap/g;

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->uin:I

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/backup/model/ax;)Lcom/tencent/mm/ap/g;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chy:Lcom/tencent/mm/ap/g;

    return-object v0
.end method


# virtual methods
.method public final Ba()Lcom/tencent/mm/w/g;
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->uin:I

    if-nez v0, :cond_0

    .line 293
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->cLl:Lcom/tencent/mm/w/g;

    return-object v0
.end method

.method public final DE()Lcom/tencent/mm/ai/r;
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->uin:I

    if-nez v0, :cond_0

    .line 329
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->cAN:Lcom/tencent/mm/ai/r;

    return-object v0
.end method

.method public final HB()Z
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->uin:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final HC()Lcom/tencent/mm/storage/ab;
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->uin:I

    if-nez v0, :cond_0

    .line 300
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->cLm:Lcom/tencent/mm/storage/ab;

    return-object v0
.end method

.method public final HD()Lcom/tencent/mm/pluginsdk/model/app/r;
    .locals 1

    .prologue
    .line 504
    iget v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->uin:I

    if-nez v0, :cond_0

    .line 505
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->cLu:Lcom/tencent/mm/pluginsdk/model/app/r;

    return-object v0
.end method

.method public final HE()Lcom/tencent/mm/pluginsdk/model/app/o;
    .locals 1

    .prologue
    .line 511
    iget v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->uin:I

    if-nez v0, :cond_0

    .line 512
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->cLv:Lcom/tencent/mm/pluginsdk/model/app/o;

    return-object v0
.end method

.method public final HF()Lcom/tencent/mm/pluginsdk/model/app/b;
    .locals 1

    .prologue
    .line 518
    iget v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->uin:I

    if-nez v0, :cond_0

    .line 519
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->cLw:Lcom/tencent/mm/pluginsdk/model/app/b;

    return-object v0
.end method

.method public final b(Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 122
    new-instance v0, Lcom/tencent/mm/ap/i;

    new-instance v1, Lcom/tencent/mm/plugin/backup/model/ay;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/backup/model/ay;-><init>(Lcom/tencent/mm/plugin/backup/model/ax;)V

    invoke-direct {v0, v1}, Lcom/tencent/mm/ap/i;-><init>(Lcom/tencent/mm/ap/j;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chw:Lcom/tencent/mm/ap/i;

    .line 148
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chw:Lcom/tencent/mm/ap/i;

    int-to-long v3, p2

    invoke-static {}, Lcom/tencent/mm/compatible/c/s;->pU()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move-object v1, p1

    move-object v2, p3

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/mm/ap/i;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/HashMap;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0, v7}, Lcom/tencent/mm/model/a;-><init>(B)V

    throw v0

    .line 152
    :cond_0
    new-instance v0, Lcom/tencent/mm/storage/e;

    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chw:Lcom/tencent/mm/ap/i;

    invoke-direct {v0, v1}, Lcom/tencent/mm/storage/e;-><init>(Lcom/tencent/mm/ap/i;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chl:Lcom/tencent/mm/storage/e;

    .line 153
    new-instance v0, Lcom/tencent/mm/storage/au;

    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chB:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/tencent/mm/storage/au;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chq:Lcom/tencent/mm/storage/au;

    .line 155
    new-instance v0, Lcom/tencent/mm/storage/k;

    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chw:Lcom/tencent/mm/ap/i;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/storage/k;-><init>(Lcom/tencent/mm/ap/i;Lcom/tencent/mm/ap/g;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chm:Lcom/tencent/mm/storage/k;

    .line 157
    new-instance v0, Lcom/tencent/mm/storage/ap;

    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chw:Lcom/tencent/mm/ap/i;

    invoke-direct {v0, v1}, Lcom/tencent/mm/storage/ap;-><init>(Lcom/tencent/mm/ap/i;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->cho:Lcom/tencent/mm/storage/ap;

    .line 158
    new-instance v0, Lcom/tencent/mm/storage/o;

    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chw:Lcom/tencent/mm/ap/i;

    invoke-direct {v0, v1}, Lcom/tencent/mm/storage/o;-><init>(Lcom/tencent/mm/sdk/e/af;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chp:Lcom/tencent/mm/storage/o;

    .line 164
    new-instance v0, Lcom/tencent/mm/storage/cc;

    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chw:Lcom/tencent/mm/ap/i;

    invoke-direct {v0, v1}, Lcom/tencent/mm/storage/cc;-><init>(Lcom/tencent/mm/ap/i;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chr:Lcom/tencent/mm/storage/cc;

    .line 166
    new-instance v0, Lcom/tencent/mm/w/g;

    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chw:Lcom/tencent/mm/ap/i;

    invoke-direct {v0, v1}, Lcom/tencent/mm/w/g;-><init>(Lcom/tencent/mm/ap/i;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->cLl:Lcom/tencent/mm/w/g;

    .line 167
    new-instance v0, Lcom/tencent/mm/storage/ab;

    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chw:Lcom/tencent/mm/ap/i;

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/backup/model/ax;->sJ()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/storage/ab;-><init>(Lcom/tencent/mm/sdk/e/af;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->cLm:Lcom/tencent/mm/storage/ab;

    .line 168
    new-instance v0, Lcom/tencent/mm/storage/c;

    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chw:Lcom/tencent/mm/ap/i;

    invoke-direct {v0, v1}, Lcom/tencent/mm/storage/c;-><init>(Lcom/tencent/mm/sdk/e/af;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chs:Lcom/tencent/mm/storage/c;

    .line 170
    new-instance v0, Lcom/tencent/mm/t/b;

    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chw:Lcom/tencent/mm/ap/i;

    invoke-direct {v0, v1}, Lcom/tencent/mm/t/b;-><init>(Lcom/tencent/mm/ap/i;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->cLo:Lcom/tencent/mm/t/b;

    .line 173
    new-instance v0, Lcom/tencent/mm/m/w;

    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chw:Lcom/tencent/mm/ap/i;

    invoke-direct {v0, v1}, Lcom/tencent/mm/m/w;-><init>(Lcom/tencent/mm/ap/i;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->cLp:Lcom/tencent/mm/m/w;

    .line 175
    new-instance v0, Lcom/tencent/mm/modelvoice/br;

    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chw:Lcom/tencent/mm/ap/i;

    invoke-direct {v0, v1}, Lcom/tencent/mm/modelvoice/br;-><init>(Lcom/tencent/mm/ap/i;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->cDa:Lcom/tencent/mm/modelvoice/br;

    .line 176
    new-instance v0, Lcom/tencent/mm/ai/r;

    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chw:Lcom/tencent/mm/ap/i;

    iget v2, p0, Lcom/tencent/mm/plugin/backup/model/ax;->uin:I

    if-nez v2, :cond_1

    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chB:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "video/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/ai/r;-><init>(Lcom/tencent/mm/ap/i;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->cAN:Lcom/tencent/mm/ai/r;

    .line 182
    new-instance v0, Lcom/tencent/mm/ah/s;

    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chw:Lcom/tencent/mm/ap/i;

    invoke-direct {v0, v1}, Lcom/tencent/mm/ah/s;-><init>(Lcom/tencent/mm/ap/i;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->cLn:Lcom/tencent/mm/ah/s;

    .line 185
    new-instance v0, Lcom/tencent/mm/modelstat/j;

    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chw:Lcom/tencent/mm/ap/i;

    invoke-direct {v0, v1}, Lcom/tencent/mm/modelstat/j;-><init>(Lcom/tencent/mm/ap/i;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->cLq:Lcom/tencent/mm/modelstat/j;

    .line 186
    new-instance v0, Lcom/tencent/mm/modelfriend/af;

    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chw:Lcom/tencent/mm/ap/i;

    invoke-direct {v0, v1}, Lcom/tencent/mm/modelfriend/af;-><init>(Lcom/tencent/mm/ap/i;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->cLr:Lcom/tencent/mm/modelfriend/af;

    .line 189
    new-instance v0, Lcom/tencent/mm/ab/l;

    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chw:Lcom/tencent/mm/ap/i;

    iget v2, p0, Lcom/tencent/mm/plugin/backup/model/ax;->uin:I

    if-nez v2, :cond_2

    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chB:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "package/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/ab/l;-><init>(Lcom/tencent/mm/ap/i;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->cLs:Lcom/tencent/mm/ab/l;

    .line 190
    new-instance v0, Lcom/tencent/mm/ab/b;

    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chw:Lcom/tencent/mm/ap/i;

    invoke-direct {v0, v1}, Lcom/tencent/mm/ab/b;-><init>(Lcom/tencent/mm/ap/i;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->cwb:Lcom/tencent/mm/ab/b;

    .line 193
    new-instance v0, Lcom/tencent/mm/pluginsdk/as;

    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chw:Lcom/tencent/mm/ap/i;

    invoke-direct {v0, v1}, Lcom/tencent/mm/pluginsdk/as;-><init>(Lcom/tencent/mm/sdk/e/af;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->cLt:Lcom/tencent/mm/pluginsdk/as;

    .line 194
    new-instance v0, Lcom/tencent/mm/pluginsdk/model/app/r;

    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chw:Lcom/tencent/mm/ap/i;

    invoke-direct {v0, v1}, Lcom/tencent/mm/pluginsdk/model/app/r;-><init>(Lcom/tencent/mm/sdk/e/af;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->cLu:Lcom/tencent/mm/pluginsdk/model/app/r;

    .line 195
    new-instance v0, Lcom/tencent/mm/pluginsdk/model/app/o;

    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chw:Lcom/tencent/mm/ap/i;

    iget v2, p0, Lcom/tencent/mm/plugin/backup/model/ax;->uin:I

    if-nez v2, :cond_3

    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chB:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "openapi/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/pluginsdk/model/app/o;-><init>(Lcom/tencent/mm/sdk/e/af;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->cLv:Lcom/tencent/mm/pluginsdk/model/app/o;

    .line 196
    new-instance v0, Lcom/tencent/mm/pluginsdk/model/app/b;

    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chw:Lcom/tencent/mm/ap/i;

    invoke-direct {v0, v1}, Lcom/tencent/mm/pluginsdk/model/app/b;-><init>(Lcom/tencent/mm/sdk/e/af;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->cLw:Lcom/tencent/mm/pluginsdk/model/app/b;

    .line 197
    new-instance v0, Lcom/tencent/mm/p/k;

    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chw:Lcom/tencent/mm/ap/i;

    invoke-direct {v0, v1}, Lcom/tencent/mm/p/k;-><init>(Lcom/tencent/mm/sdk/e/af;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->coo:Lcom/tencent/mm/p/k;

    .line 200
    new-instance v0, Lcom/tencent/mm/storage/cd;

    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chl:Lcom/tencent/mm/storage/e;

    invoke-direct {v0, v1}, Lcom/tencent/mm/storage/cd;-><init>(Lcom/tencent/mm/storage/e;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->cht:Lcom/tencent/mm/storage/cd;

    .line 201
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->cht:Lcom/tencent/mm/storage/cd;

    new-instance v1, Lcom/tencent/mm/plugin/backup/model/az;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/backup/model/az;-><init>(Lcom/tencent/mm/plugin/backup/model/ax;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/cd;->e(Lcom/tencent/mm/sdk/e/al;)V

    .line 209
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->cht:Lcom/tencent/mm/storage/cd;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/cd;->aDm()V

    .line 210
    return-void
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 112
    iput p3, p0, Lcom/tencent/mm/plugin/backup/model/ax;->uin:I

    .line 113
    iput-object p1, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chB:Ljava/lang/String;

    .line 114
    iput-object p2, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chC:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public final sA()Lcom/tencent/mm/storage/c;
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->uin:I

    if-nez v0, :cond_0

    .line 315
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chs:Lcom/tencent/mm/storage/c;

    return-object v0
.end method

.method public final sF()Ljava/lang/String;
    .locals 2

    .prologue
    .line 405
    iget v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->uin:I

    if-nez v0, :cond_0

    .line 406
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 408
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "voice/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final sG()Ljava/lang/String;
    .locals 2

    .prologue
    .line 412
    iget v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->uin:I

    if-nez v0, :cond_0

    .line 413
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 415
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "voice2/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final sJ()Ljava/lang/String;
    .locals 2

    .prologue
    .line 419
    iget v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->uin:I

    if-nez v0, :cond_0

    .line 420
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 422
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "emoji/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final sh()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 218
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chw:Lcom/tencent/mm/ap/i;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chw:Lcom/tencent/mm/ap/i;

    invoke-virtual {v0}, Lcom/tencent/mm/ap/i;->sh()V

    .line 220
    iput-object v1, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chw:Lcom/tencent/mm/ap/i;

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chy:Lcom/tencent/mm/ap/g;

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chy:Lcom/tencent/mm/ap/g;

    invoke-virtual {v0}, Lcom/tencent/mm/ap/g;->sh()V

    .line 225
    iput-object v1, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chy:Lcom/tencent/mm/ap/g;

    .line 233
    :cond_1
    return-void
.end method

.method public final sp()Lcom/tencent/mm/ap/i;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chw:Lcom/tencent/mm/ap/i;

    return-object v0
.end method

.method public final sr()Lcom/tencent/mm/storage/e;
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->uin:I

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chl:Lcom/tencent/mm/storage/e;

    return-object v0
.end method

.method public final su()Lcom/tencent/mm/storage/k;
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->uin:I

    if-nez v0, :cond_0

    .line 272
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chm:Lcom/tencent/mm/storage/k;

    return-object v0
.end method

.method public final sw()Lcom/tencent/mm/storage/ap;
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->uin:I

    if-nez v0, :cond_0

    .line 279
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->cho:Lcom/tencent/mm/storage/ap;

    return-object v0
.end method

.method public final sx()Lcom/tencent/mm/storage/o;
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->uin:I

    if-nez v0, :cond_0

    .line 286
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chp:Lcom/tencent/mm/storage/o;

    return-object v0
.end method

.method public final sz()Lcom/tencent/mm/storage/cc;
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->uin:I

    if-nez v0, :cond_0

    .line 308
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ax;->chr:Lcom/tencent/mm/storage/cc;

    return-object v0
.end method
