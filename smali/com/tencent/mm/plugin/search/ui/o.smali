.class final Lcom/tencent/mm/plugin/search/ui/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field ejm:Landroid/widget/AdapterView$OnItemClickListener;

.field iconId:I

.field text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILandroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    iput-object p3, p0, Lcom/tencent/mm/plugin/search/ui/o;->ejm:Landroid/widget/AdapterView$OnItemClickListener;

    .line 421
    iput-object p1, p0, Lcom/tencent/mm/plugin/search/ui/o;->text:Ljava/lang/String;

    .line 422
    iput p2, p0, Lcom/tencent/mm/plugin/search/ui/o;->iconId:I

    .line 423
    return-void
.end method
