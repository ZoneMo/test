.class final Lcom/tencent/mm/ui/conversation/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public cPU:Landroid/view/View;

.field public cPV:Landroid/widget/TextView;

.field public gBe:Landroid/view/View;

.field final synthetic gYP:Lcom/tencent/mm/ui/conversation/ab;

.field gYQ:Z

.field gYR:Z

.field gYS:Z

.field gYT:Z

.field gYU:Z

.field public gYV:Landroid/widget/ImageView;

.field public gYW:Landroid/widget/TextView;

.field public gYX:Landroid/view/View;

.field username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/conversation/ab;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1041
    iput-object p1, p0, Lcom/tencent/mm/ui/conversation/ae;->gYP:Lcom/tencent/mm/ui/conversation/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1042
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/ae;->username:Ljava/lang/String;

    .line 1044
    iput-boolean v2, p0, Lcom/tencent/mm/ui/conversation/ae;->gYQ:Z

    .line 1046
    iput-boolean v2, p0, Lcom/tencent/mm/ui/conversation/ae;->gYR:Z

    .line 1048
    iput-boolean v2, p0, Lcom/tencent/mm/ui/conversation/ae;->gYS:Z

    .line 1050
    iput-boolean v2, p0, Lcom/tencent/mm/ui/conversation/ae;->gYT:Z

    .line 1052
    iput-boolean v2, p0, Lcom/tencent/mm/ui/conversation/ae;->gYU:Z

    .line 1054
    iput-object v1, p0, Lcom/tencent/mm/ui/conversation/ae;->cPU:Landroid/view/View;

    .line 1055
    iput-object v1, p0, Lcom/tencent/mm/ui/conversation/ae;->gBe:Landroid/view/View;

    .line 1056
    iput-object v1, p0, Lcom/tencent/mm/ui/conversation/ae;->gYV:Landroid/widget/ImageView;

    .line 1057
    iput-object v1, p0, Lcom/tencent/mm/ui/conversation/ae;->gYW:Landroid/widget/TextView;

    .line 1058
    iput-object v1, p0, Lcom/tencent/mm/ui/conversation/ae;->cPV:Landroid/widget/TextView;

    .line 1059
    iput-object v1, p0, Lcom/tencent/mm/ui/conversation/ae;->gYX:Landroid/view/View;

    return-void
.end method
