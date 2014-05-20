.class final Lcom/tencent/mm/ui/transmit/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic hrv:Lcom/tencent/mm/ui/transmit/f;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/transmit/f;)V
    .locals 0
    .parameter

    .prologue
    .line 459
    iput-object p1, p0, Lcom/tencent/mm/ui/transmit/g;->hrv:Lcom/tencent/mm/ui/transmit/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 463
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/g;->hrv:Lcom/tencent/mm/ui/transmit/f;

    iget-object v0, v0, Lcom/tencent/mm/ui/transmit/f;->hru:Lcom/tencent/mm/ui/transmit/MsgRetransmitUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/transmit/MsgRetransmitUI;->d(Lcom/tencent/mm/ui/transmit/MsgRetransmitUI;)Lcom/tencent/mm/w/y;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 464
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/g;->hrv:Lcom/tencent/mm/ui/transmit/f;

    iget-object v0, v0, Lcom/tencent/mm/ui/transmit/f;->hru:Lcom/tencent/mm/ui/transmit/MsgRetransmitUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/transmit/MsgRetransmitUI;->d(Lcom/tencent/mm/ui/transmit/MsgRetransmitUI;)Lcom/tencent/mm/w/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/w/y;->AV()I

    move-result v0

    .line 465
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/w/g;->dE(I)Lcom/tencent/mm/w/e;

    move-result-object v1

    .line 466
    if-eqz v1, :cond_0

    .line 467
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/mm/w/g;->dC(I)V

    .line 468
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->AF()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/ap;->bV(J)I

    .line 470
    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/transmit/g;->hrv:Lcom/tencent/mm/ui/transmit/f;

    iget-object v1, v1, Lcom/tencent/mm/ui/transmit/f;->hru:Lcom/tencent/mm/ui/transmit/MsgRetransmitUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/transmit/MsgRetransmitUI;->d(Lcom/tencent/mm/ui/transmit/MsgRetransmitUI;)Lcom/tencent/mm/w/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->c(Lcom/tencent/mm/n/x;)V

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/g;->hrv:Lcom/tencent/mm/ui/transmit/f;

    iget-object v0, v0, Lcom/tencent/mm/ui/transmit/f;->hru:Lcom/tencent/mm/ui/transmit/MsgRetransmitUI;

    const v1, 0x7f070617

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 473
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/g;->hrv:Lcom/tencent/mm/ui/transmit/f;

    iget-object v0, v0, Lcom/tencent/mm/ui/transmit/f;->hru:Lcom/tencent/mm/ui/transmit/MsgRetransmitUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/transmit/MsgRetransmitUI;->finish()V

    .line 474
    return-void
.end method
