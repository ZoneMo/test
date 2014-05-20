.class public final Lcom/tencent/mm/plugin/search/model/ar;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public dKv:I

.field public ehn:I

.field public eih:I

.field public eii:I

.field public eij:I


# direct methods
.method private constructor <init>(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v0, p0, Lcom/tencent/mm/plugin/search/model/ar;->eih:I

    .line 32
    iput v0, p0, Lcom/tencent/mm/plugin/search/model/ar;->eii:I

    .line 33
    iput v0, p0, Lcom/tencent/mm/plugin/search/model/ar;->eij:I

    .line 36
    iput p1, p0, Lcom/tencent/mm/plugin/search/model/ar;->ehn:I

    .line 37
    iput p2, p0, Lcom/tencent/mm/plugin/search/model/ar;->dKv:I

    .line 38
    return-void
.end method

.method synthetic constructor <init>(IIB)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/tencent/mm/plugin/search/model/ar;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/mm/plugin/search/model/ar;->ehn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/plugin/search/model/ar;->dKv:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
