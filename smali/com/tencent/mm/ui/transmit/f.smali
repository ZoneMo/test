.class final Lcom/tencent/mm/ui/transmit/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic hru:Lcom/tencent/mm/ui/transmit/MsgRetransmitUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/transmit/MsgRetransmitUI;)V
    .locals 0
    .parameter

    .prologue
    .line 455
    iput-object p1, p0, Lcom/tencent/mm/ui/transmit/f;->hru:Lcom/tencent/mm/ui/transmit/MsgRetransmitUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 7
    .parameter

    .prologue
    .line 459
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/f;->hru:Lcom/tencent/mm/ui/transmit/MsgRetransmitUI;

    const v1, 0x7f070618

    const v2, 0x7f0709bb

    const v3, 0x7f0709d5

    const v4, 0x7f0709d6

    new-instance v5, Lcom/tencent/mm/ui/transmit/g;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/transmit/g;-><init>(Lcom/tencent/mm/ui/transmit/f;)V

    new-instance v6, Lcom/tencent/mm/ui/transmit/h;

    invoke-direct {v6, p0}, Lcom/tencent/mm/ui/transmit/h;-><init>(Lcom/tencent/mm/ui/transmit/f;)V

    invoke-static/range {v0 .. v6}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;IIIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    .line 486
    return-void
.end method
