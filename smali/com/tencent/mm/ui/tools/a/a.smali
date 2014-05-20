.class abstract Lcom/tencent/mm/ui/tools/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field EM:Z

.field final cnG:Ljava/lang/String;

.field final hpN:Lcom/tencent/mm/ui/tools/a/ab;

.field final hpO:Ljava/lang/ref/WeakReference;

.field final hpP:Z

.field final hpQ:I

.field final hpR:Landroid/graphics/drawable/Drawable;

.field final hpS:Z


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/tencent/mm/ui/tools/a/ab;ZZILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/tencent/mm/ui/tools/a/a;->hpN:Lcom/tencent/mm/ui/tools/a/ab;

    .line 31
    new-instance v0, Lcom/tencent/mm/ui/tools/a/b;

    invoke-static {}, Lcom/tencent/mm/ui/tools/a/u;->aOH()Lcom/tencent/mm/ui/tools/a/u;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/ui/tools/a/u;->hqA:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p0, p1, v1}, Lcom/tencent/mm/ui/tools/a/b;-><init>(Lcom/tencent/mm/ui/tools/a/a;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/a/a;->hpO:Ljava/lang/ref/WeakReference;

    .line 32
    iput-boolean p3, p0, Lcom/tencent/mm/ui/tools/a/a;->hpP:Z

    .line 33
    iput p5, p0, Lcom/tencent/mm/ui/tools/a/a;->hpQ:I

    .line 34
    iput-object p6, p0, Lcom/tencent/mm/ui/tools/a/a;->hpR:Landroid/graphics/drawable/Drawable;

    .line 35
    iput-object p7, p0, Lcom/tencent/mm/ui/tools/a/a;->cnG:Ljava/lang/String;

    .line 36
    iput-boolean p4, p0, Lcom/tencent/mm/ui/tools/a/a;->hpS:Z

    .line 37
    return-void
.end method


# virtual methods
.method abstract a(Landroid/graphics/Bitmap;Lcom/tencent/mm/ui/tools/a/s;)V
.end method

.method cancel()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/a/a;->EM:Z

    .line 45
    return-void
.end method

.method abstract error()V
.end method
