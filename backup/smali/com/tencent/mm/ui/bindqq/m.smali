.class final Lcom/tencent/mm/ui/bindqq/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic gJw:Lcom/tencent/mm/o/a;

.field final synthetic gJx:Lcom/tencent/mm/ui/bindqq/l;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/bindqq/l;Lcom/tencent/mm/o/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/tencent/mm/ui/bindqq/m;->gJx:Lcom/tencent/mm/ui/bindqq/l;

    iput-object p2, p0, Lcom/tencent/mm/ui/bindqq/m;->gJw:Lcom/tencent/mm/o/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/tencent/mm/ui/bindqq/m;->gJx:Lcom/tencent/mm/ui/bindqq/l;

    iget-object v0, v0, Lcom/tencent/mm/ui/bindqq/l;->gJv:Lcom/tencent/mm/ui/bindqq/g;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bindqq/g;->onDetach()V

    .line 147
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/bindqq/m;->gJw:Lcom/tencent/mm/o/a;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->c(Lcom/tencent/mm/n/x;)V

    .line 148
    return-void
.end method
