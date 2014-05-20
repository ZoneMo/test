.class final Lcom/tencent/mm/plugin/search/model/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/platformtools/az;


# instance fields
.field final synthetic egV:Lcom/tencent/mm/plugin/search/model/b;

.field private egW:I


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/search/model/b;)V
    .locals 1
    .parameter

    .prologue
    .line 1034
    iput-object p1, p0, Lcom/tencent/mm/plugin/search/model/g;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1035
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/search/model/g;->egW:I

    return-void
.end method


# virtual methods
.method public final ok()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1039
    invoke-static {}, Lcom/tencent/mm/plugin/search/model/at;->aaY()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/plugin/search/model/at;->aaZ()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    .line 1041
    :goto_0
    if-nez v0, :cond_2

    .line 1042
    iget v0, p0, Lcom/tencent/mm/plugin/search/model/g;->egW:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mm/plugin/search/model/g;->egW:I

    const/4 v3, 0x6

    if-ge v0, v3, :cond_2

    .line 1048
    :goto_1
    return v2

    :cond_1
    move v0, v1

    .line 1039
    goto :goto_0

    .line 1046
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/g;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/b;->d(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/y;

    move-result-object v0

    const v3, 0x2000b

    new-instance v4, Lcom/tencent/mm/plugin/search/model/x;

    iget-object v5, p0, Lcom/tencent/mm/plugin/search/model/g;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-direct {v4, v5, v1}, Lcom/tencent/mm/plugin/search/model/x;-><init>(Lcom/tencent/mm/plugin/search/model/b;B)V

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/plugin/search/model/y;->a(ILcom/tencent/mm/plugin/search/model/af;)Lcom/tencent/mm/plugin/search/model/af;

    .line 1047
    iput v1, p0, Lcom/tencent/mm/plugin/search/model/g;->egW:I

    goto :goto_1
.end method
