.class public final Lcom/tencent/mm/pluginsdk/ui/tools/a/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final fxd:I

.field private final fxe:[Lcom/tencent/mm/pluginsdk/ui/tools/a/u;


# direct methods
.method varargs constructor <init>(I[Lcom/tencent/mm/pluginsdk/ui/tools/a/u;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput p1, p0, Lcom/tencent/mm/pluginsdk/ui/tools/a/v;->fxd:I

    .line 188
    iput-object p2, p0, Lcom/tencent/mm/pluginsdk/ui/tools/a/v;->fxe:[Lcom/tencent/mm/pluginsdk/ui/tools/a/u;

    .line 189
    return-void
.end method


# virtual methods
.method public final avn()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/tools/a/v;->fxd:I

    return v0
.end method

.method public final avo()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 196
    .line 197
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/tools/a/v;->fxe:[Lcom/tencent/mm/pluginsdk/ui/tools/a/u;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 198
    invoke-virtual {v4}, Lcom/tencent/mm/pluginsdk/ui/tools/a/u;->getCount()I

    move-result v4

    add-int/2addr v1, v4

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_0
    return v1
.end method

.method public final avp()I
    .locals 2

    .prologue
    .line 204
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/tools/a/v;->fxd:I

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/tools/a/v;->avo()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public final avq()[Lcom/tencent/mm/pluginsdk/ui/tools/a/u;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/tools/a/v;->fxe:[Lcom/tencent/mm/pluginsdk/ui/tools/a/u;

    return-object v0
.end method
