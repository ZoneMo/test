.class public final Lcom/tencent/mm/platformtools/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final cGO:Lcom/tencent/mm/platformtools/f;

.field public final cGP:Lcom/tencent/mm/platformtools/e;

.field public final cGQ:Ljava/lang/String;

.field public final cGR:Landroid/view/View$OnClickListener;


# direct methods
.method private constructor <init>(Lcom/tencent/mm/platformtools/f;Lcom/tencent/mm/platformtools/e;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/tencent/mm/platformtools/ab;->cGO:Lcom/tencent/mm/platformtools/f;

    .line 33
    iput-object p2, p0, Lcom/tencent/mm/platformtools/ab;->cGP:Lcom/tencent/mm/platformtools/e;

    .line 34
    iput-object p3, p0, Lcom/tencent/mm/platformtools/ab;->cGQ:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/tencent/mm/platformtools/ab;->cGR:Landroid/view/View$OnClickListener;

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/mm/platformtools/f;Lcom/tencent/mm/platformtools/e;Ljava/lang/String;Landroid/view/View$OnClickListener;B)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/mm/platformtools/ab;-><init>(Lcom/tencent/mm/platformtools/f;Lcom/tencent/mm/platformtools/e;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final Fz()Lcom/tencent/mm/platformtools/ac;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lcom/tencent/mm/platformtools/ac;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/mm/platformtools/ac;-><init>(Lcom/tencent/mm/platformtools/ab;B)V

    return-object v0
.end method
