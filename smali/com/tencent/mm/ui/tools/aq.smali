.class final Lcom/tencent/mm/ui/tools/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic hhZ:Lcom/tencent/mm/ui/tools/CropImageNewUI;

.field final synthetic hib:Lcom/tencent/mm/sdk/platformtools/ay;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/CropImageNewUI;Lcom/tencent/mm/sdk/platformtools/ay;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 776
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/aq;->hhZ:Lcom/tencent/mm/ui/tools/CropImageNewUI;

    iput-object p2, p0, Lcom/tencent/mm/ui/tools/aq;->hib:Lcom/tencent/mm/sdk/platformtools/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 779
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 787
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 781
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/aq;->hib:Lcom/tencent/mm/sdk/platformtools/ay;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/ay;->bO(J)V

    goto :goto_0

    .line 786
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/aq;->hib:Lcom/tencent/mm/sdk/platformtools/ay;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/ay;->azn()V

    goto :goto_0

    .line 779
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
