.class final Lcom/tencent/mm/ui/do;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field desc:Ljava/lang/String;

.field final synthetic goA:Lcom/tencent/mm/ui/dm;

.field goB:Z

.field goC:I

.field goz:Z

.field icon:I

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/ui/dm;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 392
    iput-object p1, p0, Lcom/tencent/mm/ui/do;->goA:Lcom/tencent/mm/ui/dm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    iput-boolean v0, p0, Lcom/tencent/mm/ui/do;->goz:Z

    .line 402
    iput-boolean v0, p0, Lcom/tencent/mm/ui/do;->goB:Z

    .line 403
    iput v0, p0, Lcom/tencent/mm/ui/do;->goC:I

    .line 393
    iput-object p2, p0, Lcom/tencent/mm/ui/do;->title:Ljava/lang/String;

    .line 394
    iput-object p3, p0, Lcom/tencent/mm/ui/do;->desc:Ljava/lang/String;

    .line 395
    iput p4, p0, Lcom/tencent/mm/ui/do;->icon:I

    .line 396
    return-void
.end method
