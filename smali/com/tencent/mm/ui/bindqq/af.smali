.class final Lcom/tencent/mm/ui/bindqq/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic gJP:Lcom/tencent/mm/ui/bindqq/ae;

.field final synthetic gJw:Lcom/tencent/mm/o/a;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/bindqq/ae;Lcom/tencent/mm/o/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/tencent/mm/ui/bindqq/af;->gJP:Lcom/tencent/mm/ui/bindqq/ae;

    iput-object p2, p0, Lcom/tencent/mm/ui/bindqq/af;->gJw:Lcom/tencent/mm/o/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 122
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/bindqq/af;->gJw:Lcom/tencent/mm/o/a;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->c(Lcom/tencent/mm/n/x;)V

    .line 123
    return-void
.end method
