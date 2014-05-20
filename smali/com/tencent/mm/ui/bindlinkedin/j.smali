.class final Lcom/tencent/mm/ui/bindlinkedin/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic gIB:Lcom/tencent/mm/y/b;

.field final synthetic gIC:Lcom/tencent/mm/ui/bindlinkedin/i;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/bindlinkedin/i;Lcom/tencent/mm/y/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/tencent/mm/ui/bindlinkedin/j;->gIC:Lcom/tencent/mm/ui/bindlinkedin/i;

    iput-object p2, p0, Lcom/tencent/mm/ui/bindlinkedin/j;->gIB:Lcom/tencent/mm/y/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 223
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/bindlinkedin/j;->gIB:Lcom/tencent/mm/y/b;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->c(Lcom/tencent/mm/n/x;)V

    .line 224
    return-void
.end method
