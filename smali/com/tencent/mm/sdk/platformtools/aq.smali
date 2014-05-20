.class final Lcom/tencent/mm/sdk/platformtools/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic gdO:Lcom/tencent/mm/sdk/platformtools/ap;


# direct methods
.method constructor <init>(Lcom/tencent/mm/sdk/platformtools/ap;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/tencent/mm/sdk/platformtools/aq;->gdO:Lcom/tencent/mm/sdk/platformtools/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/tencent/mm/sdk/platformtools/aq;->gdO:Lcom/tencent/mm/sdk/platformtools/ap;

    iget-object v0, v0, Lcom/tencent/mm/sdk/platformtools/ap;->gdN:Lcom/tencent/mm/sdk/platformtools/ar;

    invoke-interface {v0}, Lcom/tencent/mm/sdk/platformtools/ar;->vf()Z

    .line 201
    return-void
.end method
