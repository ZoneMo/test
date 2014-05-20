.class public final Lcom/tencent/mm/platformtools/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bLY:I

.field private cGQ:Ljava/lang/String;

.field private cGS:Landroid/view/View$OnClickListener;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/tencent/mm/platformtools/ab;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iget-object v0, p1, Lcom/tencent/mm/platformtools/ab;->cGO:Lcom/tencent/mm/platformtools/f;

    invoke-virtual {v0}, Lcom/tencent/mm/platformtools/f;->getValue()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/platformtools/ac;->type:I

    .line 51
    iget-object v0, p1, Lcom/tencent/mm/platformtools/ab;->cGP:Lcom/tencent/mm/platformtools/e;

    invoke-virtual {v0}, Lcom/tencent/mm/platformtools/e;->getValue()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/platformtools/ac;->bLY:I

    .line 52
    iget-object v0, p1, Lcom/tencent/mm/platformtools/ab;->cGQ:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/platformtools/ac;->cGQ:Ljava/lang/String;

    .line 53
    iget-object v0, p1, Lcom/tencent/mm/platformtools/ab;->cGR:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcom/tencent/mm/platformtools/ac;->cGS:Landroid/view/View$OnClickListener;

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/mm/platformtools/ab;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/tencent/mm/platformtools/ac;-><init>(Lcom/tencent/mm/platformtools/ab;)V

    return-void
.end method


# virtual methods
.method public final FA()Lcom/tencent/mm/platformtools/ab;
    .locals 6

    .prologue
    .line 76
    iget v0, p0, Lcom/tencent/mm/platformtools/ac;->type:I

    invoke-static {v0}, Lcom/tencent/mm/platformtools/f;->eL(I)Lcom/tencent/mm/platformtools/f;

    move-result-object v1

    .line 77
    iget v0, p0, Lcom/tencent/mm/platformtools/ac;->bLY:I

    invoke-static {v0}, Lcom/tencent/mm/platformtools/e;->eK(I)Lcom/tencent/mm/platformtools/e;

    move-result-object v2

    .line 78
    new-instance v0, Lcom/tencent/mm/platformtools/ab;

    iget-object v3, p0, Lcom/tencent/mm/platformtools/ac;->cGQ:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/mm/platformtools/ac;->cGS:Landroid/view/View$OnClickListener;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/platformtools/ab;-><init>(Lcom/tencent/mm/platformtools/f;Lcom/tencent/mm/platformtools/e;Ljava/lang/String;Landroid/view/View$OnClickListener;B)V

    return-object v0
.end method

.method public final a(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/platformtools/ac;
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/tencent/mm/platformtools/ac;->cGS:Landroid/view/View$OnClickListener;

    .line 72
    return-object p0
.end method

.method public final eO(I)Lcom/tencent/mm/platformtools/ac;
    .locals 0
    .parameter

    .prologue
    .line 56
    iput p1, p0, Lcom/tencent/mm/platformtools/ac;->type:I

    .line 57
    return-object p0
.end method

.method public final eP(I)Lcom/tencent/mm/platformtools/ac;
    .locals 0
    .parameter

    .prologue
    .line 61
    iput p1, p0, Lcom/tencent/mm/platformtools/ac;->bLY:I

    .line 62
    return-object p0
.end method

.method public final hO(Ljava/lang/String;)Lcom/tencent/mm/platformtools/ac;
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/tencent/mm/platformtools/ac;->cGQ:Ljava/lang/String;

    .line 67
    return-object p0
.end method
