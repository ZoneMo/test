.class final Lcom/tencent/mm/af/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/platformtools/bw;


# instance fields
.field final synthetic cyq:Lcom/tencent/mm/af/h;


# direct methods
.method constructor <init>(Lcom/tencent/mm/af/h;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/tencent/mm/af/i;->cyq:Lcom/tencent/mm/af/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ve()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method public final vf()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/tencent/mm/af/i;->cyq:Lcom/tencent/mm/af/h;

    iget-object v0, v0, Lcom/tencent/mm/af/h;->cyp:Lcom/tencent/mm/af/g;

    iget-object v0, v0, Lcom/tencent/mm/af/g;->cyo:Lcom/tencent/mm/af/e;

    invoke-static {v0}, Lcom/tencent/mm/af/e;->b(Lcom/tencent/mm/af/e;)V

    .line 91
    const/4 v0, 0x0

    return v0
.end method
