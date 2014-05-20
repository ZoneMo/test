.class final Lcom/tencent/mm/model/bp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/platformtools/as;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uO()V
    .locals 1

    .prologue
    .line 820
    invoke-static {}, Lcom/tencent/mm/model/be;->uK()Lcom/tencent/mm/model/be;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/be;->c(Lcom/tencent/mm/model/be;)Lcom/tencent/mm/model/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 821
    invoke-static {}, Lcom/tencent/mm/model/be;->uK()Lcom/tencent/mm/model/be;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/be;->c(Lcom/tencent/mm/model/be;)Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->release()V

    .line 823
    :cond_0
    return-void
.end method
