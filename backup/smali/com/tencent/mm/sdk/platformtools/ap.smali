.class final Lcom/tencent/mm/sdk/platformtools/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic gdM:Lcom/tencent/mm/sdk/platformtools/an;

.field final synthetic gdN:Lcom/tencent/mm/sdk/platformtools/ar;


# direct methods
.method constructor <init>(Lcom/tencent/mm/sdk/platformtools/an;Lcom/tencent/mm/sdk/platformtools/ar;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/tencent/mm/sdk/platformtools/ap;->gdM:Lcom/tencent/mm/sdk/platformtools/an;

    iput-object p2, p0, Lcom/tencent/mm/sdk/platformtools/ap;->gdN:Lcom/tencent/mm/sdk/platformtools/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/tencent/mm/sdk/platformtools/ap;->gdN:Lcom/tencent/mm/sdk/platformtools/ar;

    invoke-interface {v0}, Lcom/tencent/mm/sdk/platformtools/ar;->ve()Z

    .line 197
    new-instance v0, Lcom/tencent/mm/sdk/platformtools/aq;

    invoke-direct {v0, p0}, Lcom/tencent/mm/sdk/platformtools/aq;-><init>(Lcom/tencent/mm/sdk/platformtools/ap;)V

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/an;->q(Ljava/lang/Runnable;)V

    .line 203
    return-void
.end method
