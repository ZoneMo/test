.class final Lcom/tencent/mm/ui/transmit/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic gRi:Lcom/tencent/mm/ui/transmit/l;

.field final synthetic hrY:Lcom/tencent/mm/ui/transmit/ai;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/transmit/ai;Lcom/tencent/mm/ui/transmit/l;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/tencent/mm/ui/transmit/aj;->hrY:Lcom/tencent/mm/ui/transmit/ai;

    iput-object p2, p0, Lcom/tencent/mm/ui/transmit/aj;->gRi:Lcom/tencent/mm/ui/transmit/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/aj;->gRi:Lcom/tencent/mm/ui/transmit/l;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/transmit/l;->aOZ()V

    .line 64
    return-void
.end method
