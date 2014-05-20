.class final Lcom/tencent/mm/ui/tools/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field doL:Z

.field final synthetic hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

.field hhr:Landroid/content/pm/ResolveInfo;

.field hhs:Ljava/lang/CharSequence;

.field hht:Landroid/graphics/drawable/Drawable;

.field hhu:Z

.field hhv:Z


# direct methods
.method public constructor <init>(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 721
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/t;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 722
    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 724
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/t;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 725
    iput-object p2, p0, Lcom/tencent/mm/ui/tools/t;->hhr:Landroid/content/pm/ResolveInfo;

    .line 726
    iput-object p3, p0, Lcom/tencent/mm/ui/tools/t;->hhs:Ljava/lang/CharSequence;

    .line 727
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/t;->hhu:Z

    .line 728
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/t;->hhv:Z

    .line 729
    return-void
.end method
