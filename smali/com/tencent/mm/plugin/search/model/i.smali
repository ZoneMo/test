.class final Lcom/tencent/mm/plugin/search/model/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field bPx:Ljava/lang/String;

.field bTR:Ljava/lang/String;

.field cie:Ljava/lang/String;

.field cqh:Ljava/lang/String;

.field egX:Ljava/lang/String;

.field egY:Ljava/lang/String;

.field egZ:Ljava/lang/String;

.field eha:Ljava/lang/String;

.field id:J

.field status:I

.field type:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/tencent/mm/modelfriend/h;)V
    .locals 2
    .parameter

    .prologue
    .line 1314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1315
    invoke-virtual {p1}, Lcom/tencent/mm/modelfriend/h;->yK()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/h;->eW(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/tencent/mm/plugin/search/model/i;->id:J

    .line 1317
    invoke-virtual {p1}, Lcom/tencent/mm/modelfriend/h;->yM()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/model/i;->cqh:Ljava/lang/String;

    .line 1318
    invoke-virtual {p1}, Lcom/tencent/mm/modelfriend/h;->yO()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/model/i;->egX:Ljava/lang/String;

    .line 1319
    invoke-virtual {p1}, Lcom/tencent/mm/modelfriend/h;->yN()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/model/i;->egY:Ljava/lang/String;

    .line 1321
    invoke-virtual {p1}, Lcom/tencent/mm/modelfriend/h;->yP()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/model/i;->cie:Ljava/lang/String;

    .line 1322
    invoke-virtual {p1}, Lcom/tencent/mm/modelfriend/h;->yR()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/model/i;->egZ:Ljava/lang/String;

    .line 1323
    invoke-virtual {p1}, Lcom/tencent/mm/modelfriend/h;->yQ()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/model/i;->eha:Ljava/lang/String;

    .line 1325
    invoke-virtual {p1}, Lcom/tencent/mm/modelfriend/h;->getUsername()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/model/i;->bPx:Ljava/lang/String;

    .line 1326
    invoke-virtual {p1}, Lcom/tencent/mm/modelfriend/h;->yS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/model/i;->bTR:Ljava/lang/String;

    .line 1327
    invoke-virtual {p1}, Lcom/tencent/mm/modelfriend/h;->getType()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/search/model/i;->type:I

    .line 1328
    invoke-virtual {p1}, Lcom/tencent/mm/modelfriend/h;->getStatus()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/search/model/i;->status:I

    .line 1329
    return-void
.end method
