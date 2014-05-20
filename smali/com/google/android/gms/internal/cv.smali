.class final Lcom/google/android/gms/internal/cv;
.super Landroid/graphics/drawable/Drawable;


# static fields
.field private static final QP:Lcom/google/android/gms/internal/cv;

.field private static final QQ:Lcom/google/android/gms/internal/cw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/cv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cv;->QP:Lcom/google/android/gms/internal/cv;

    new-instance v0, Lcom/google/android/gms/internal/cw;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cw;-><init>(B)V

    sput-object v0, Lcom/google/android/gms/internal/cv;->QQ:Lcom/google/android/gms/internal/cw;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method

.method static synthetic lc()Lcom/google/android/gms/internal/cv;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/cv;->QP:Lcom/google/android/gms/internal/cv;

    return-object v0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/cv;->QQ:Lcom/google/android/gms/internal/cw;

    return-object v0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public final setAlpha(I)V
    .locals 0

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
