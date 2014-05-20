.class public final Lcom/tencent/mm/pluginsdk/model/app/aj;
.super Lcom/tencent/mm/pluginsdk/model/app/z;
.source "SourceFile"


# instance fields
.field private fhF:Ljava/util/LinkedList;

.field private fhG:Ljava/util/LinkedList;

.field private fhH:Ljava/util/LinkedList;

.field private fhI:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;Ljava/util/LinkedList;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 29
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/model/app/z;-><init>()V

    .line 30
    const-string v0, "MicroMsg.NetSceneGetSuggestionAppList"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "offset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", limit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lang = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "installedApp list size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p5}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 32
    const-string v2, "MicroMsg.NetSceneGetSuggestionAppList"

    const-string v3, "install id:[%s]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 34
    :cond_0
    iput p1, p0, Lcom/tencent/mm/pluginsdk/model/app/aj;->fhI:I

    .line 35
    new-instance v0, Lcom/tencent/mm/n/b;

    invoke-direct {v0}, Lcom/tencent/mm/n/b;-><init>()V

    .line 36
    new-instance v1, Lcom/tencent/mm/protocal/a/kq;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/kq;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->a(Lcom/tencent/mm/am/a;)V

    .line 37
    new-instance v1, Lcom/tencent/mm/protocal/a/kr;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/kr;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->b(Lcom/tencent/mm/am/a;)V

    .line 38
    const-string v1, "/cgi-bin/micromsg-bin/getsuggestionapplist"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->es(Ljava/lang/String;)V

    .line 39
    const/16 v1, 0x199

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cN(I)V

    .line 40
    invoke-virtual {v0, v5}, Lcom/tencent/mm/n/b;->cO(I)V

    .line 41
    invoke-virtual {v0, v5}, Lcom/tencent/mm/n/b;->cP(I)V

    .line 43
    invoke-virtual {v0}, Lcom/tencent/mm/n/b;->wx()Lcom/tencent/mm/n/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/aj;->fhs:Lcom/tencent/mm/n/a;

    .line 44
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/aj;->fhs:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->wr()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/kq;

    .line 45
    iput p1, v0, Lcom/tencent/mm/protocal/a/kq;->fMp:I

    .line 46
    iput p2, v0, Lcom/tencent/mm/protocal/a/kq;->fMq:I

    .line 47
    iput p3, v0, Lcom/tencent/mm/protocal/a/kq;->fMr:I

    .line 48
    iput-object p4, v0, Lcom/tencent/mm/protocal/a/kq;->fzH:Ljava/lang/String;

    .line 49
    invoke-static {p5}, Lcom/tencent/mm/pluginsdk/model/app/aj;->R(Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object v1

    .line 50
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    iput v2, v0, Lcom/tencent/mm/protocal/a/kq;->fMs:I

    .line 51
    iput-object v1, v0, Lcom/tencent/mm/protocal/a/kq;->fMt:Ljava/util/LinkedList;

    .line 52
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/aj;->fhF:Ljava/util/LinkedList;

    .line 53
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/aj;->fhG:Ljava/util/LinkedList;

    .line 54
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/aj;->fhH:Ljava/util/LinkedList;

    .line 55
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/aj;->fhH:Ljava/util/LinkedList;

    invoke-virtual {v0, p5}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 56
    return-void
.end method

.method private static R(Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 4
    .parameter

    .prologue
    .line 156
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 157
    if-nez p0, :cond_0

    move-object v0, v1

    .line 167
    :goto_0
    return-object v0

    .line 161
    :cond_0
    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 162
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 163
    invoke-static {v0}, Lcom/tencent/mm/platformtools/an;->hQ(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 167
    goto :goto_0
.end method

.method private static a(Lcom/tencent/mm/pluginsdk/model/app/k;Lcom/tencent/mm/protocal/a/aal;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 200
    const-string v0, "MicroMsg.NetSceneGetSuggestionAppList"

    const-string v1, "dealYYBDownloadInfos, appId = %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/mm/pluginsdk/model/app/k;->field_appId:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    if-eqz p1, :cond_0

    .line 203
    iget v0, p1, Lcom/tencent/mm/protocal/a/aal;->gap:I

    iput v0, p0, Lcom/tencent/mm/pluginsdk/model/app/k;->bSL:I

    .line 204
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/aal;->fCy:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/k;->bSO:Ljava/lang/String;

    .line 205
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/aal;->gaq:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/k;->bSP:Ljava/lang/String;

    .line 206
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/aal;->gar:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/k;->bSM:Ljava/lang/String;

    .line 207
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/aal;->fEv:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/k;->bSN:Ljava/lang/String;

    .line 208
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/aal;->gas:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/k;->bSQ:Ljava/lang/String;

    .line 209
    iget v0, p1, Lcom/tencent/mm/protocal/a/aal;->gat:I

    iput v0, p0, Lcom/tencent/mm/pluginsdk/model/app/k;->bSR:I

    .line 210
    const-string v0, "MicroMsg.NetSceneGetSuggestionAppList"

    const-string v1, "get yyb download infos:[%d],[%s],[%s],[%s],[%s],[%s],[%d]"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Lcom/tencent/mm/protocal/a/aal;->gap:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p1, Lcom/tencent/mm/protocal/a/aal;->fCy:Ljava/lang/String;

    aput-object v3, v2, v5

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/tencent/mm/protocal/a/aal;->gaq:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p1, Lcom/tencent/mm/protocal/a/aal;->gar:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p1, Lcom/tencent/mm/protocal/a/aal;->fEv:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p1, Lcom/tencent/mm/protocal/a/aal;->gas:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget v4, p1, Lcom/tencent/mm/protocal/a/aal;->gat:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    :cond_0
    return-void
.end method

.method private static a(Lcom/tencent/mm/pluginsdk/model/app/k;Lcom/tencent/mm/protocal/a/e;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 215
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/e;->fyS:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/k;->bSz:Ljava/lang/String;

    .line 216
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/e;->fyT:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/k;->bSA:Ljava/lang/String;

    .line 217
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/e;->fyU:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/k;->bSH:Ljava/lang/String;

    .line 218
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/e;->fyX:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/k;->bSF:Ljava/lang/String;

    .line 219
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/e;->fyV:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/k;->field_appName:Ljava/lang/String;

    .line 220
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/e;->fyW:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/k;->field_appIconUrl:Ljava/lang/String;

    .line 221
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/e;->fyZ:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/k;->bSI:Ljava/lang/String;

    .line 222
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/e;->fzb:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/k;->bSS:Ljava/lang/String;

    .line 223
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/e;->fza:Lcom/tencent/mm/protocal/a/aal;

    invoke-static {p0, v0}, Lcom/tencent/mm/pluginsdk/model/app/aj;->a(Lcom/tencent/mm/pluginsdk/model/app/k;Lcom/tencent/mm/protocal/a/aal;)V

    .line 224
    return-void
.end method

.method private static a(Lcom/tencent/mm/pluginsdk/model/app/k;Lcom/tencent/mm/protocal/a/ra;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 171
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/ra;->fyT:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/k;->bSA:Ljava/lang/String;

    .line 172
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/ra;->fyW:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/k;->field_appIconUrl:Ljava/lang/String;

    .line 174
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/ra;->fTo:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/k;->bSy:Ljava/lang/String;

    .line 175
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/ra;->fyV:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/k;->field_appName:Ljava/lang/String;

    .line 177
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/ra;->fTr:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/k;->bSE:Ljava/lang/String;

    .line 178
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/ra;->fyX:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/k;->bSF:Ljava/lang/String;

    .line 179
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/ra;->fAe:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/k;->field_appType:Ljava/lang/String;

    .line 180
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/ra;->fyU:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/k;->bSH:Ljava/lang/String;

    .line 181
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/ra;->fyY:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/k;->field_packageName:Ljava/lang/String;

    .line 182
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/ra;->fyZ:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/k;->bSI:Ljava/lang/String;

    .line 183
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/ra;->fTv:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/k;->bSJ:Ljava/lang/String;

    .line 184
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/ra;->fTw:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/k;->bSK:Ljava/lang/String;

    .line 186
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/ra;->fza:Lcom/tencent/mm/protocal/a/aal;

    invoke-static {p0, v0}, Lcom/tencent/mm/pluginsdk/model/app/aj;->a(Lcom/tencent/mm/pluginsdk/model/app/k;Lcom/tencent/mm/protocal/a/aal;)V

    .line 187
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/k;->field_appType:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/k;->field_appType:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/k;->field_appType:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/model/app/k;->field_appType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/k;->field_appType:Ljava/lang/String;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/model/app/k;->field_appType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/k;->field_appType:Ljava/lang/String;

    .line 188
    :cond_1
    return-void
.end method

.method private a(Lcom/tencent/mm/pluginsdk/model/app/o;Ljava/util/LinkedList;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 87
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 88
    invoke-virtual {p2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/e;

    .line 89
    iget-object v1, v0, Lcom/tencent/mm/protocal/a/e;->fyR:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/tencent/mm/pluginsdk/model/app/l;->F(Ljava/lang/String;Z)Lcom/tencent/mm/pluginsdk/model/app/k;

    move-result-object v1

    .line 90
    if-eqz v1, :cond_0

    .line 91
    invoke-static {v1, v0}, Lcom/tencent/mm/pluginsdk/model/app/aj;->a(Lcom/tencent/mm/pluginsdk/model/app/k;Lcom/tencent/mm/protocal/a/e;)V

    .line 92
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/tencent/mm/pluginsdk/model/app/o;->a(Lcom/tencent/mm/sdk/e/ad;[Ljava/lang/String;)Z

    move-object v0, v1

    .line 99
    :goto_1
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/model/app/aj;->fhG:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    :cond_0
    new-instance v1, Lcom/tencent/mm/pluginsdk/model/app/k;

    invoke-direct {v1}, Lcom/tencent/mm/pluginsdk/model/app/k;-><init>()V

    .line 95
    iget-object v3, v0, Lcom/tencent/mm/protocal/a/e;->fyR:Ljava/lang/String;

    iput-object v3, v1, Lcom/tencent/mm/pluginsdk/model/app/k;->field_appId:Ljava/lang/String;

    .line 96
    invoke-static {v1, v0}, Lcom/tencent/mm/pluginsdk/model/app/aj;->a(Lcom/tencent/mm/pluginsdk/model/app/k;Lcom/tencent/mm/protocal/a/e;)V

    .line 97
    invoke-virtual {p1, v1}, Lcom/tencent/mm/pluginsdk/model/app/o;->b(Lcom/tencent/mm/sdk/e/ad;)Z

    move-object v0, v1

    goto :goto_1

    .line 102
    :cond_1
    return-void
.end method

.method private b(Lcom/tencent/mm/pluginsdk/model/app/o;Ljava/util/LinkedList;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    .line 105
    if-eqz p2, :cond_b

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 106
    invoke-virtual {p2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/ra;

    .line 107
    iget-object v1, v0, Lcom/tencent/mm/protocal/a/ra;->fyR:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    const-string v0, "MicroMsg.NetSceneGetSuggestionAppList"

    const-string v1, "error appinfo, the appid is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_1
    const/4 v3, 0x1

    .line 112
    const/4 v2, 0x0

    .line 113
    iget-object v1, v0, Lcom/tencent/mm/protocal/a/ra;->fyR:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v1, v4}, Lcom/tencent/mm/pluginsdk/model/app/l;->F(Ljava/lang/String;Z)Lcom/tencent/mm/pluginsdk/model/app/k;

    move-result-object v4

    .line 114
    if-eqz v4, :cond_6

    .line 115
    invoke-static {v4, v0}, Lcom/tencent/mm/pluginsdk/model/app/aj;->a(Lcom/tencent/mm/pluginsdk/model/app/k;Lcom/tencent/mm/protocal/a/ra;)V

    .line 116
    iget v1, p0, Lcom/tencent/mm/pluginsdk/model/app/aj;->fhI:I

    const/4 v6, 0x3

    if-ne v1, v6, :cond_5

    .line 117
    const/4 v1, 0x5

    iput v1, v4, Lcom/tencent/mm/pluginsdk/model/app/k;->field_status:I

    .line 119
    iget-object v1, v4, Lcom/tencent/mm/pluginsdk/model/app/k;->bSK:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v4, Lcom/tencent/mm/pluginsdk/model/app/k;->bSJ:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 120
    :cond_2
    const-string v3, "MicroMsg.NetSceneGetSuggestionAppList"

    const-string v6, "wrong suggestion params1, has IntroUrl %s, has IconUrl %s"

    const/4 v1, 0x2

    new-array v7, v1, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v1, v4, Lcom/tencent/mm/pluginsdk/model/app/k;->bSK:Ljava/lang/String;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v7, v8

    const/4 v8, 0x1

    iget-object v1, v4, Lcom/tencent/mm/pluginsdk/model/app/k;->bSJ:Ljava/lang/String;

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v7, v8

    invoke-static {v3, v6, v7}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    const/4 v1, 0x0

    move v10, v2

    move v2, v1

    move v1, v10

    .line 128
    :goto_3
    const-string v3, "MicroMsg.NetSceneGetSuggestionAppList"

    const-string v6, "update appinfo: AppID = %s, ret = %s, needAddToList = %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, v0, Lcom/tencent/mm/protocal/a/ra;->fyR:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v7, v8

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v3, v6, v7}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v4

    .line 148
    :goto_4
    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/model/app/aj;->fhH:Ljava/util/LinkedList;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/ra;->fyR:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/aj;->fhF:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/aj;->fhF:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 120
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 126
    :cond_5
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1, v4, v1}, Lcom/tencent/mm/pluginsdk/model/app/o;->a(Lcom/tencent/mm/sdk/e/ad;[Ljava/lang/String;)Z

    move-result v1

    move v2, v3

    goto :goto_3

    .line 131
    :cond_6
    new-instance v4, Lcom/tencent/mm/pluginsdk/model/app/k;

    invoke-direct {v4}, Lcom/tencent/mm/pluginsdk/model/app/k;-><init>()V

    .line 132
    iget-object v1, v0, Lcom/tencent/mm/protocal/a/ra;->fyR:Ljava/lang/String;

    iput-object v1, v4, Lcom/tencent/mm/pluginsdk/model/app/k;->field_appId:Ljava/lang/String;

    .line 133
    invoke-static {v4, v0}, Lcom/tencent/mm/pluginsdk/model/app/aj;->a(Lcom/tencent/mm/pluginsdk/model/app/k;Lcom/tencent/mm/protocal/a/ra;)V

    .line 135
    iget v1, p0, Lcom/tencent/mm/pluginsdk/model/app/aj;->fhI:I

    const/4 v6, 0x3

    if-ne v1, v6, :cond_a

    .line 136
    const/4 v1, 0x5

    iput v1, v4, Lcom/tencent/mm/pluginsdk/model/app/k;->field_status:I

    .line 137
    iget-object v1, v4, Lcom/tencent/mm/pluginsdk/model/app/k;->bSK:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v4, Lcom/tencent/mm/pluginsdk/model/app/k;->bSJ:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 138
    :cond_7
    const-string v3, "MicroMsg.NetSceneGetSuggestionAppList"

    const-string v6, "wrong suggestion params2, has IntroUrl %s, has IconUrl %s"

    const/4 v1, 0x2

    new-array v7, v1, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v1, v4, Lcom/tencent/mm/pluginsdk/model/app/k;->bSK:Ljava/lang/String;

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    :goto_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v7, v8

    const/4 v8, 0x1

    iget-object v1, v4, Lcom/tencent/mm/pluginsdk/model/app/k;->bSJ:Ljava/lang/String;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    :goto_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v7, v8

    invoke-static {v3, v6, v7}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    const/4 v3, 0x0

    .line 146
    :goto_7
    const-string v1, "MicroMsg.NetSceneGetSuggestionAppList"

    const-string v6, "insert appinfo: AppID = %s, ret = %s, needAddToList = %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, v0, Lcom/tencent/mm/protocal/a/ra;->fyR:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v7, v8

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v1, v6, v7}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v4

    move v2, v3

    goto/16 :goto_4

    .line 138
    :cond_8
    const/4 v1, 0x0

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    goto :goto_6

    .line 144
    :cond_a
    invoke-virtual {p1, v4}, Lcom/tencent/mm/pluginsdk/model/app/o;->b(Lcom/tencent/mm/sdk/e/ad;)Z

    move-result v2

    goto :goto_7

    .line 153
    :cond_b
    return-void
.end method


# virtual methods
.method public final K([B)V
    .locals 2
    .parameter

    .prologue
    .line 256
    if-nez p1, :cond_0

    .line 257
    const-string v0, "MicroMsg.NetSceneGetSuggestionAppList"

    const-string v1, "buf is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/aj;->fhs:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->wt()Lcom/tencent/mm/n/d;

    move-result-object v0

    .line 263
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/tencent/mm/n/d;->s([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    const-string v1, "MicroMsg.NetSceneGetSuggestionAppList"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final Ps()[B
    .locals 2

    .prologue
    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/aj;->fhs:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->wJ()Lcom/tencent/mm/protocal/p;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/n/c;

    invoke-virtual {v0}, Lcom/tencent/mm/n/c;->wz()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 249
    :goto_0
    return-object v0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    const-string v1, "MicroMsg.NetSceneGetSuggestionAppList"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/aj;[B)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    const-string v0, "MicroMsg.NetSceneGetSuggestionAppList"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "errType = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 63
    :cond_0
    const-string v0, "MicroMsg.NetSceneGetSuggestionAppList"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "errType = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/aj;->fhs:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->ws()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/kr;

    .line 68
    if-nez v0, :cond_2

    .line 69
    const-string v0, "MicroMsg.NetSceneGetSuggestionAppList"

    const-string v1, "resp == null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_2
    iget v1, v0, Lcom/tencent/mm/protocal/a/kr;->fMu:I

    .line 74
    const-string v2, "MicroMsg.NetSceneGetSuggestionAppList"

    const-string v3, "suggestion app count = %s, appType = %s, "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    iget v5, p0, Lcom/tencent/mm/pluginsdk/model/app/aj;->fhI:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->app()Lcom/tencent/mm/pluginsdk/ah;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/mm/pluginsdk/ah;->apw()Lcom/tencent/mm/pluginsdk/model/app/o;

    move-result-object v1

    .line 78
    iget-object v2, v0, Lcom/tencent/mm/protocal/a/kr;->fMv:Ljava/util/LinkedList;

    .line 79
    invoke-direct {p0, v1, v2}, Lcom/tencent/mm/pluginsdk/model/app/aj;->b(Lcom/tencent/mm/pluginsdk/model/app/o;Ljava/util/LinkedList;)V

    .line 81
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/kr;->fMy:Ljava/util/LinkedList;

    .line 82
    invoke-direct {p0, v1, v0}, Lcom/tencent/mm/pluginsdk/model/app/aj;->a(Lcom/tencent/mm/pluginsdk/model/app/o;Ljava/util/LinkedList;)V

    goto :goto_0
.end method

.method public final aqa()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/aj;->fhG:Ljava/util/LinkedList;

    return-object v0
.end method

.method public final aqb()I
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/aj;->fhs:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->ws()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/kr;

    iget v0, v0, Lcom/tencent/mm/protocal/a/kr;->fMu:I

    return v0
.end method

.method public final aqc()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/aj;->fhF:Ljava/util/LinkedList;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x4

    return v0
.end method
