.class public final Lcom/tencent/mm/storage/at;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bNl:Ljava/lang/String;

.field public dOI:Ljava/util/ArrayList;

.field public giq:Ljava/lang/String;

.field public gir:I

.field public gis:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/storage/ak;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tencent/mm/storage/at;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/storage/ak;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/storage/ak;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/storage/at;->dOI:Ljava/util/ArrayList;

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/storage/at;->gis:J

    .line 58
    iput-object p1, p0, Lcom/tencent/mm/storage/at;->bNl:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/tencent/mm/storage/at;->giq:Ljava/lang/String;

    .line 60
    iput p4, p0, Lcom/tencent/mm/storage/at;->gir:I

    .line 61
    if-eqz p3, :cond_0

    .line 62
    iget-object v0, p0, Lcom/tencent/mm/storage/at;->dOI:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_0
    return-void
.end method

.method static x(Lcom/tencent/mm/storage/ak;)Z
    .locals 2
    .parameter

    .prologue
    .line 67
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/storage/ak;->getStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
