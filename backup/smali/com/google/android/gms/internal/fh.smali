.class public Lcom/google/android/gms/internal/fh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final PJ:Lcom/google/android/gms/internal/ck;


# instance fields
.field private final KH:I

.field private final Ol:Ljava/lang/String;

.field private final PK:Ljava/util/List;

.field private final PL:Ljava/util/List;

.field private final PM:Landroid/net/Uri;

.field private final PN:Ljava/lang/String;

.field private final PO:Ljava/lang/String;

.field private final PP:Ljava/lang/String;

.field private final PQ:Landroid/os/Bundle;

.field private final PR:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ck;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ck;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fh;->PJ:Lcom/google/android/gms/internal/ck;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/fh;->KH:I

    iput-object p2, p0, Lcom/google/android/gms/internal/fh;->Ol:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/fh;->PK:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/fh;->PL:Ljava/util/List;

    iput-object p5, p0, Lcom/google/android/gms/internal/fh;->PM:Landroid/net/Uri;

    iput-object p6, p0, Lcom/google/android/gms/internal/fh;->PN:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/fh;->PO:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/fh;->PP:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/fh;->PQ:Landroid/os/Bundle;

    iput-object p10, p0, Lcom/google/android/gms/internal/fh;->PR:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/internal/fh;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/fh;

    iget v1, p0, Lcom/google/android/gms/internal/fh;->KH:I

    iget v2, p1, Lcom/google/android/gms/internal/fh;->KH:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/fh;->PK:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gms/internal/fh;->PK:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/fh;->PL:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gms/internal/fh;->PL:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/fh;->PM:Landroid/net/Uri;

    iget-object v2, p1, Lcom/google/android/gms/internal/fh;->PM:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/fh;->PN:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/fh;->PN:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/fh;->PO:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/fh;->PO:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/fh;->PP:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/fh;->PP:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fh;->Ol:Ljava/lang/String;

    return-object v0
.end method

.method public final hH()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/fh;->KH:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/fh;->KH:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/fh;->PK:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/fh;->PL:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/fh;->PM:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/fh;->PN:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/fh;->PO:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/fh;->PP:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final kK()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fh;->PK:Ljava/util/List;

    return-object v0
.end method

.method public final kL()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fh;->PL:Ljava/util/List;

    return-object v0
.end method

.method public final kM()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fh;->PM:Landroid/net/Uri;

    return-object v0
.end method

.method public final kN()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fh;->PN:Ljava/lang/String;

    return-object v0
.end method

.method public final kO()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fh;->PO:Ljava/lang/String;

    return-object v0
.end method

.method public final kP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fh;->PP:Ljava/lang/String;

    return-object v0
.end method

.method public final kQ()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fh;->PQ:Landroid/os/Bundle;

    return-object v0
.end method

.method public final kR()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fh;->PR:Landroid/os/Bundle;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ck;->a(Lcom/google/android/gms/internal/fh;Landroid/os/Parcel;I)V

    return-void
.end method
