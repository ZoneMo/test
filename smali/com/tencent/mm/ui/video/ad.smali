.class final Lcom/tencent/mm/ui/video/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic hts:Lcom/tencent/mm/ui/video/ac;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/video/ac;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/tencent/mm/ui/video/ad;->hts:Lcom/tencent/mm/ui/video/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 226
    iget-object v0, p0, Lcom/tencent/mm/ui/video/ad;->hts:Lcom/tencent/mm/ui/video/ac;

    iget-object v0, v0, Lcom/tencent/mm/ui/video/ac;->htr:Lcom/tencent/mm/ui/video/VideoRecorderUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->m(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Landroid/widget/ImageButton;

    move-result-object v0

    sget v1, Lcom/tencent/mm/h;->ajL:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 232
    iget-object v0, p0, Lcom/tencent/mm/ui/video/ad;->hts:Lcom/tencent/mm/ui/video/ac;

    iget-object v0, v0, Lcom/tencent/mm/ui/video/ac;->htr:Lcom/tencent/mm/ui/video/VideoRecorderUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->n(Lcom/tencent/mm/ui/video/VideoRecorderUI;)V

    .line 233
    return-void
.end method
