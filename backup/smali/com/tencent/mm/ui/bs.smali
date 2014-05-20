.class final Lcom/tencent/mm/ui/bs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field cQJ:Z

.field eam:Landroid/view/MenuItem$OnMenuItemClickListener;

.field gnH:I

.field gnI:I

.field gnJ:Landroid/view/View;

.field gnK:Landroid/view/View;

.field gnL:Lcom/tencent/mm/ui/bt;

.field gnM:Landroid/view/View$OnLongClickListener;

.field text:Ljava/lang/String;

.field visible:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/ui/bs;->gnH:I

    .line 119
    iput-boolean v1, p0, Lcom/tencent/mm/ui/bs;->cQJ:Z

    .line 120
    iput-boolean v1, p0, Lcom/tencent/mm/ui/bs;->visible:Z

    .line 124
    sget-object v0, Lcom/tencent/mm/ui/bt;->gnN:Lcom/tencent/mm/ui/bt;

    iput-object v0, p0, Lcom/tencent/mm/ui/bs;->gnL:Lcom/tencent/mm/ui/bt;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/tencent/mm/ui/bs;-><init>()V

    return-void
.end method
